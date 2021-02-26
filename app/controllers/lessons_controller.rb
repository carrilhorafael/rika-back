class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :update, :destroy, :give_feedback]

  # GET /lessons
  def index
    @lessons = Lesson.all

    render json: @lessons
  end

  # GET /lessons/1
  def show
    render json: @lesson
  end

  # POST /lessons
  def create
    @lesson = Lesson.new(lesson_params.except(:homework))

    if @lesson.save
      destroy_lesson = false
      if lesson_params[:homework].present?
        homework = Homework.new(lesson_id: @lesson.id, description: lesson_params[:homework][:description], deadline: lesson_params[:homework][:deadline])
        destroy_lesson = true unless homework.save
      end

      if destroy_lesson
        @lesson.destroy
        render json: homework.errors, status: 422
      else
        render json: @lesson, status: :created, location: @lesson 
      end
    else
      render json: @lesson.errors, status: :unprocessable_entity
    end
  end
  def give_feedback
    @lesson_feedback = LessonFeedback.new(feedback_params.merge(lesson_id: @lesson.id))

    if @lesson_feedback.save
      render json: @lesson, status: :created
    else
      render json: @lesson_feedback.errors, status: :unprocessable_entity
    end
  end
  # PATCH/PUT /lessons/1
  def update
    if @lesson.update(lesson_params)
      render json: @lesson
    else
      render json: @lesson.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lessons/1
  def destroy
    @lesson.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lesson_params
      params.require(:lesson).permit(:description, :link_youtube, :schedule, :subject_id, homework:{})
    end
    def feedback_params
      params.require(:feedback).permit(:user_id, :lesson_id, :lesson_grade, :lesson_feedback, :instructor_feedback, :instructor_grade, :monitors_feedback, :monitors_grade)
    end
end

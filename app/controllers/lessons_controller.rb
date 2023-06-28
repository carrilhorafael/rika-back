class LessonsController < ApplicationController
  before_action :set_instructed_or_enrolled_course, only: %i[ index show ]
  before_action :set_instructed_course, only: %i[ create update destroy upload_attachment ]
  before_action :set_lesson, only: %i[ show update destroy upload_attachment ]

  # GET /lessons
  def index
    render json: @course.lessons
  end

  # GET /lessons/1
  def show
    render json: @lesson, serializer: LessonSerializer::Show
  end

  # POST /lessons
  def create
    action = Lesson::Create.call(course: @course, title: params[:lesson][:title], performer: @current_user)

    if action.success?
      render json: action.course, status: :created
    else
      render json: action.error, status: action.code
    end
  end

  # PATCH/PUT /lessons/1
  def update
    action = Lesson::Update.call(
      lesson: @lesson,
      lesson_params: lesson_params,
      performer: @current_user
    )

    if action.success?
      render json: action.lesson, serializer: LessonSerializer::Show
    else
      render json: action.error, status: action.code
    end
  end

  def upload_attachment
    attachment = @lesson.attachments.create!
    attachment.file.attach(params[:file])

    render json: attachment
  end

  # DELETE /lessons/1
  def destroy
    action = Lesson::Destroy.call(lesson: @lesson, performer: @current_user)

    if action.success?
      render json: action.course
    else
      render json: action.error, status: action.code
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = @course.lessons.find(params[:id])
    end

    def set_instructed_course
      @course = @current_user.instructed_courses.find_by(id: params[:course_id])
    end

    def set_instructed_or_enrolled_course
      @course = @current_user.instructed_courses.find_by(id: params[:course_id]) || @current_user.enrolled_courses.find_by(id: params[:course_id])
    end

    def lesson_params
      params.require(:lesson).permit(:title, contents: [:type, :data])
    end
end

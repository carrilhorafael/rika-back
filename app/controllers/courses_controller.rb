class CoursesController < ApplicationController
  before_action :set_course, only: %i[ show update destroy evaluate ]

  # GET /courses
  def index
    @courses = Course.all

    render json: @courses
  end

  # GET /courses/1
  def show
    render json: @course
  end

  # POST /courses
  def create
    action = Course::Create.call(course_params: course_params, performer: @current_user)

    if action.success?
      render json: action.course, status: :created
    else
      render json: { error: action.error }, status: action.code
    end
  end

  # PATCH/PUT /courses/1
  def update
    action = Course::Update.call(course: @course, course_params: course_params, performer: @current_user)

    if action.success?
      render json: action.course
    else
      render json: { error: action.error }, status: action.code
    end
  end

  def evaluate
    @course.evaluate(params[:gived_star])

    render json: @course
  end

  # DELETE /courses/1
  def destroy
    @course.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = @current_user.instructed_courses.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.require(:course).permit(:title, :description, tags: [])
    end
end

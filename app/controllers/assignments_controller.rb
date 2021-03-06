class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :update, :destroy, :give_feedback]

  # GET /assignments
  def index
    @assignments = Assignment.all

    render json: @assignments
  end

  # GET /assignments/1
  def show
    render json: @assignment
  end

  # POST /assignments
  def create
    @assignment = Assignment.new(assignment_params)

    if @assignment.save
      render json: @assignment, status: :created, location: @assignment
    else
      render json: @assignment.errors, status: :unprocessable_entity
    end
  end
  def give_feedback
    @feedback = AssignmentFeedback.new(feedback_params.merge(assignment_id: @assignment.id))
    if @feedback.save
      render json: @assignment, status: 201
    else
      render json: @feedback.errors, status: 422
    end
  
  end

  # PATCH/PUT /assignments/1
  def update
    if @assignment.update(assignment_params)
      render json: @assignment
    else
      render json: @assignment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assignments/1
  def destroy
    @assignment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def assignment_params
      params.require(:assignment).permit(:user_id, :gitlab_link, :homework_id, :delay_days)
    end
    def feedback_params
      params.require(:feedback).permit(:user_id, :content, :grade)
    end
end

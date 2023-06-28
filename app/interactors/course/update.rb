class Course::Update < Course::Base

  def call
    assign_attributes
    validate_model
    course.save!
  end

  private

  def assign_attributes
    course.assign_attributes(course_params)
  end

  def course_params
    context.course_params
  end

  def validate_model
    context.fail!(error: course.errors.full_messages.join(", "), code: :unprocessable_entity) unless course.valid?
  end
end

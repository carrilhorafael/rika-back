class Course::Create < Course::Base

  def call
    build_course
    validate_model
    course.save!
  end

  private

  def build_course
    context.course = performer.instructed_courses.build(course_params)
    course.stars = [0, 0, 0, 0, 0]
  end

  def course_params
    context.course_params
  end

  def validate_model
    context.fail!(error: course.errors.full_messages.join(", "), code: :unprocessable_entity) unless course.valid?
  end
end

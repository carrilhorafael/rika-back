class Lesson::Update < Lesson::Base

  def call
    check_authorization
    assign_attributes
    validate_model
    lesson.save!
  end

  private

  def check_authorization
    context.fail!(error: 'You are not authorized to update this lesson', code: :unauthorized) unless course.instructor == performer
  end

  def assign_attributes
    lesson.assign_attributes(lesson_params)
  end

  def lesson_params
    context.lesson_params
  end

  def validate_model
    context.fail!(error: lesson.errors.full_messages.join(", "), code: :unprocessable_entity) unless lesson.valid?
  end
end

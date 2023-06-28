class Lesson::Create < Lesson::Base

  def call
    check_params
    check_authorization
    build_lesson
    validate_model
    lesson.save!
  end

  private

  def check_authorization
    context.fail!(error: 'You are not authorized to create a lesson', code: :unauthorized) unless course.instructor == performer
  end

  def check_params
    context.fail!(error: "Missing course for lession", code: :unprocessable_entity) unless context.course
  end

  def build_lesson
    context.lesson = course.lessons.build(title: context.title)
  end

  def validate_model
    context.fail!(error: lesson.errors.full_messages.join(", "), code: :unprocessable_entity) unless lesson.valid?
  end
end

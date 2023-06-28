class Lesson::Destroy < Lesson::Base

  def call
    check_authorization
    lesson.destroy!
  end

  private

  def check_authorization
    context.fail!(error: 'You are not authorized to delete this lesson', code: :unauthorized) unless course.instructor == performer
  end
end

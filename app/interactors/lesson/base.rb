class Lesson::Base < AbstractInteractor
  def resource
    lesson
  end

  def lesson
    context.lesson
  end

  def course
    lesson&.course || context.course
  end
end

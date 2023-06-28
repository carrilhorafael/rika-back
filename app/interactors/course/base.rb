class Course::Base < AbstractInteractor

  def resource
    course
  end

  def course
    context.course
  end

  def instructor
    course&.instructor || context.instructor
  end
end

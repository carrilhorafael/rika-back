class User::Base < AbstractInteractor
  def resource
    context.user
  end

  def user
    context.user
  end
end

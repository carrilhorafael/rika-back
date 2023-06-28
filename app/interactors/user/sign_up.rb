class User::SignUp < User::Base

  def call
    build_user
    validate_user
    ActiveRecord::Base.transaction do
      persist_user
      make_login
    end
  end

  private

  def build_user
    context.user = User.new(user_params)
  end

  def validate_user
    context.fail!(error: context.user.errors.full_messages.join(", "), code: :unprocessable_entity) unless user.valid?
  end

  def persist_user
    user.save!
  end

  def user_params
    context.user_params
  end

  def make_login
    context.token = User::Login.call(user: user).token
  end
end

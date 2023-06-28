class User::Login < User::Base

  def call
    find_and_authorize_user unless user.present?
    generate_token
    update_login_data
  end

  private

  def find_and_authorize_user
    find_user
    authenticate!
  end

  def find_user
    context.user = User.find_by(email: user_params[:email])
  end

  def authenticate!
    context.fail!(error: "Invalid email or password", code: :unauthorized) unless user.authenticate(user_params[:password])
  end

  def user_params
    context.user_params
  end

  def generate_token
    context.token = JsonWebToken.encode(user_id: user.id)
  end

  def update_login_data
    user.update!(last_login_at: Time.now, login_count: user.login_count + 1)
  end
end

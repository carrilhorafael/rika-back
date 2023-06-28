class AuthenticationController < ActionController::API
  def login
    action = User::Login.call(user_params: login_params)

    if action.success?
      render json: action.user, status: :ok, meta: { token: action.token }, adapter: :json
    else
      render json: { error: action.error }, status: action.code
    end
  end

  def sign_up
    action = User::SignUp.call(user_params: user_params)

    if action.success?
      render json: action.user, status: :created, meta: { token: action.token }, adapter: :json
    else
      render json: { error: action.error }, status: action.code
    end
  end

  private

  def login_params
    params.require(:user).permit(:email, :password)
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end

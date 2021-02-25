class AuthController < ApplicationController
  def signup
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: 201
    else
      render json: @user.errors, status: 422
    end
  end

  def login
    user = User.find_by!(email: params[:user][:email])
    if user.authenticate(params[:user][:password])
      render json: user 
      response.headers["Authorization"] = JsonWebToken.encode(user_id: user.id)
    else
      render json: {message: "Senha inválida"}, status: 403
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end

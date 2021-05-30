class ApplicationController < ActionController::API
    def current_user
        token = request.headers["Authorization"]
        return nil unless token.present?
        decoded = JsonWebToken.decode(token)
        return nil unless decoded.present?
        User.find(decoded[0]["user_id"])
    end
end

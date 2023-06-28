class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :login_count, :last_login_at
end

class AdminUserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :is_admin
end

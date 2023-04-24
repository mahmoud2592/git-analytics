class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :profile_picture, :bio, :location, :twitter_url, :facebook_url, :linkedin_url, :github_url, :website_url, :role, :latitude, :longitude
end

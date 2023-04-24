FactoryBot.define do
  factory :user do
    name { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
    profile_picture { "MyString" }
    bio { "MyText" }
    location { "MyString" }
    twitter_url { "MyString" }
    facebook_url { "MyString" }
    linkedin_url { "MyString" }
    github_url { "MyString" }
    website_url { "MyString" }
    role { 1 }
    latitude { 1.5 }
    longitude { 1.5 }
  end
end

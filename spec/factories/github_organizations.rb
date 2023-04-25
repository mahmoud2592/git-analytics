FactoryBot.define do
  factory :organization do
    name { "MyString" }
    description { "MyText" }
    url { "MyString" }
    github_id { 1 }
    avatar_url { "MyString" }
    html_url { "MyString" }
    public_repos { 1 }
    public_gists { 1 }
    followers { 1 }
    following { 1 }
  end
end

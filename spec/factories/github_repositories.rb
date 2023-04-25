FactoryBot.define do
  factory :github_repository do
    name { "MyString" }
    description { "MyString" }
    language { "MyString" }
    stars { 1 }
    forks { 1 }
    url { "MyString" }
  end
end

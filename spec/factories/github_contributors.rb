FactoryBot.define do
  factory :github_contributor do
    contributor_id { 1 }
    username { "MyString" }
    profile_link { "MyString" }
    number_of_contributions { 1 }
    url { "MyString" }
    repository_id { 1 }
  end
end

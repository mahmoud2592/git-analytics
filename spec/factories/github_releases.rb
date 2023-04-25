FactoryBot.define do
  factory :github_release do
    release_id { 1 }
    tag_name { "MyString" }
    target_commitish { "MyString" }
    name { "MyString" }
    body { "MyString" }
    url { "MyString" }
    repository_id { 1 }
  end
end

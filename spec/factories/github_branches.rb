FactoryBot.define do
  factory :github_branch do
    branch_id { 1 }
    name { "MyString" }
    last_commit { "MyString" }
    url { "MyString" }
    repository_id { 1 }
  end
end

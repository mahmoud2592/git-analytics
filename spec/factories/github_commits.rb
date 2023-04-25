FactoryBot.define do
  factory :github_commit do
    commit_id { 1 }
    commit_message { "MyString" }
    author { "MyString" }
    timestamp { "2023-04-25 00:25:27" }
    url { "MyString" }
    repository_id { 1 }
  end
end

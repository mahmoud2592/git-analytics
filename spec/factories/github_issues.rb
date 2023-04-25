FactoryBot.define do
  factory :github_issue do
    issue_id { 1 }
    title { "MyString" }
    description { "MyString" }
    author { "MyString" }
    assignee { "MyString" }
    status { "MyString" }
    labels { "MyString" }
    timestamp { "2023-04-25 00:25:29" }
    url { "MyString" }
    repository_id { 1 }
  end
end

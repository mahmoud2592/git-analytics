FactoryBot.define do
  factory :github_label do
    label_id { 1 }
    name { "MyString" }
    color { "MyString" }
    description { "MyString" }
    url { "MyString" }
    repository_id { 1 }
  end
end

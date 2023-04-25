FactoryBot.define do
  factory :github_collaborator do
    collaborator_id { 1 }
    username { "MyString" }
    permission { "MyString" }
    repository_id { 1 }
  end
end

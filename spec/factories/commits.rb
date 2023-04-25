FactoryBot.define do
  factory :commit do
    sha { "MyString" }
    author_name { "MyString" }
    author_email { "MyString" }
    message { "MyText" }
    committed_date { "2023-04-24 20:16:13" }
    repository_id { 1 }
    day { "2023-04-24 20:16:13" }
    week { "2023-04-24 20:16:13" }
    month { "2023-04-24 20:16:13" }
  end
end

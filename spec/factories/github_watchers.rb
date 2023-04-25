FactoryBot.define do
  factory :github_watcher do
    watcher_id { 1 }
    repository_id { 1 }
    user_id { 1 }
  end
end

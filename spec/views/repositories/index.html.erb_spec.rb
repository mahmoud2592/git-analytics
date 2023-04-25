require 'rails_helper'

RSpec.describe "repositories/index", type: :view do
  before(:each) do
    assign(:repositories, [
      Repository.create!(
        name: "Name",
        description: "MyText",
        programming_language: "Programming Language",
        license: "License",
        url: "Url",
        default_branch: "Default Branch",
        stars_count: 2,
        forks_count: 3,
        watchers_count: 4,
        issues_count: 5,
        pull_requests_count: 6,
        commit_count: 7
      ),
      Repository.create!(
        name: "Name",
        description: "MyText",
        programming_language: "Programming Language",
        license: "License",
        url: "Url",
        default_branch: "Default Branch",
        stars_count: 2,
        forks_count: 3,
        watchers_count: 4,
        issues_count: 5,
        pull_requests_count: 6,
        commit_count: 7
      )
    ])
  end

  it "renders a list of repositories" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Programming Language".to_s, count: 2
    assert_select "tr>td", text: "License".to_s, count: 2
    assert_select "tr>td", text: "Url".to_s, count: 2
    assert_select "tr>td", text: "Default Branch".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
    assert_select "tr>td", text: 7.to_s, count: 2
  end
end

require 'rails_helper'

RSpec.describe "repositories/edit", type: :view do
  before(:each) do
    @repository = assign(:repository, Repository.create!(
      name: "MyString",
      description: "MyText",
      programming_language: "MyString",
      license: "MyString",
      url: "MyString",
      default_branch: "MyString",
      stars_count: 1,
      forks_count: 1,
      watchers_count: 1,
      issues_count: 1,
      pull_requests_count: 1,
      commit_count: 1
    ))
  end

  it "renders the edit repository form" do
    render

    assert_select "form[action=?][method=?]", repository_path(@repository), "post" do

      assert_select "input[name=?]", "repository[name]"

      assert_select "textarea[name=?]", "repository[description]"

      assert_select "input[name=?]", "repository[programming_language]"

      assert_select "input[name=?]", "repository[license]"

      assert_select "input[name=?]", "repository[url]"

      assert_select "input[name=?]", "repository[default_branch]"

      assert_select "input[name=?]", "repository[stars_count]"

      assert_select "input[name=?]", "repository[forks_count]"

      assert_select "input[name=?]", "repository[watchers_count]"

      assert_select "input[name=?]", "repository[issues_count]"

      assert_select "input[name=?]", "repository[pull_requests_count]"

      assert_select "input[name=?]", "repository[commit_count]"
    end
  end
end

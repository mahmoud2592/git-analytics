require 'rails_helper'

RSpec.describe "commits/new", type: :view do
  before(:each) do
    assign(:commit, Commit.new(
      sha: "MyString",
      author_name: "MyString",
      author_email: "MyString",
      message: "MyText",
      repository_id: 1
    ))
  end

  it "renders new commit form" do
    render

    assert_select "form[action=?][method=?]", commits_path, "post" do

      assert_select "input[name=?]", "commit[sha]"

      assert_select "input[name=?]", "commit[author_name]"

      assert_select "input[name=?]", "commit[author_email]"

      assert_select "textarea[name=?]", "commit[message]"

      assert_select "input[name=?]", "commit[repository_id]"
    end
  end
end

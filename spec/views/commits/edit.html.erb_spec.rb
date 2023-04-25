require 'rails_helper'

RSpec.describe "commits/edit", type: :view do
  before(:each) do
    @commit = assign(:commit, Commit.create!(
      sha: "MyString",
      author_name: "MyString",
      author_email: "MyString",
      message: "MyText",
      repository_id: 1
    ))
  end

  it "renders the edit commit form" do
    render

    assert_select "form[action=?][method=?]", commit_path(@commit), "post" do

      assert_select "input[name=?]", "commit[sha]"

      assert_select "input[name=?]", "commit[author_name]"

      assert_select "input[name=?]", "commit[author_email]"

      assert_select "textarea[name=?]", "commit[message]"

      assert_select "input[name=?]", "commit[repository_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      user_id: 1,
      repository_id: 1,
      body: "MyText",
      upvotes: 1,
      downvotes: 1
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input[name=?]", "comment[user_id]"

      assert_select "input[name=?]", "comment[repository_id]"

      assert_select "textarea[name=?]", "comment[body]"

      assert_select "input[name=?]", "comment[upvotes]"

      assert_select "input[name=?]", "comment[downvotes]"
    end
  end
end

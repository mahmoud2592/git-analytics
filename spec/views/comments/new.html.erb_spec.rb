require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      user_id: 1,
      repository_id: 1,
      body: "MyText",
      upvotes: 1,
      downvotes: 1
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input[name=?]", "comment[user_id]"

      assert_select "input[name=?]", "comment[repository_id]"

      assert_select "textarea[name=?]", "comment[body]"

      assert_select "input[name=?]", "comment[upvotes]"

      assert_select "input[name=?]", "comment[downvotes]"
    end
  end
end

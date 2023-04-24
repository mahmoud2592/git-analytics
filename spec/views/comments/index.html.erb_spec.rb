require 'rails_helper'

RSpec.describe "comments/index", type: :view do
  before(:each) do
    assign(:comments, [
      Comment.create!(
        user_id: 2,
        repository_id: 3,
        body: "MyText",
        upvotes: 4,
        downvotes: 5
      ),
      Comment.create!(
        user_id: 2,
        repository_id: 3,
        body: "MyText",
        upvotes: 4,
        downvotes: 5
      )
    ])
  end

  it "renders a list of comments" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
  end
end

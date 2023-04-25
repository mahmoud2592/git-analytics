require 'rails_helper'

RSpec.describe "ratings/new", type: :view do
  before(:each) do
    assign(:rating, Rating.new(
      user_id: 1,
      repository_id: 1,
      rating: 1,
      feedback: "MyText"
    ))
  end

  it "renders new rating form" do
    render

    assert_select "form[action=?][method=?]", ratings_path, "post" do

      assert_select "input[name=?]", "rating[user_id]"

      assert_select "input[name=?]", "rating[repository_id]"

      assert_select "input[name=?]", "rating[rating]"

      assert_select "textarea[name=?]", "rating[feedback]"
    end
  end
end

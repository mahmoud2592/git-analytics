require 'rails_helper'

RSpec.describe "ratings/index", type: :view do
  before(:each) do
    assign(:ratings, [
      Rating.create!(
        user_id: 2,
        repository_id: 3,
        rating: 4,
        feedback: "MyText"
      ),
      Rating.create!(
        user_id: 2,
        repository_id: 3,
        rating: 4,
        feedback: "MyText"
      )
    ])
  end

  it "renders a list of ratings" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end

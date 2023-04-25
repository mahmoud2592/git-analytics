require 'rails_helper'

RSpec.describe "feedbacks/index", type: :view do
  before(:each) do
    assign(:feedbacks, [
      Feedback.create!(
        user_id: 2,
        category: "Category",
        message: "MyText"
      ),
      Feedback.create!(
        user_id: 2,
        category: "Category",
        message: "MyText"
      )
    ])
  end

  it "renders a list of feedbacks" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Category".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end

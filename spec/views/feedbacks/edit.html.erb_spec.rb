require 'rails_helper'

RSpec.describe "feedbacks/edit", type: :view do
  before(:each) do
    @feedback = assign(:feedback, Feedback.create!(
      user_id: 1,
      category: "MyString",
      message: "MyText"
    ))
  end

  it "renders the edit feedback form" do
    render

    assert_select "form[action=?][method=?]", feedback_path(@feedback), "post" do

      assert_select "input[name=?]", "feedback[user_id]"

      assert_select "input[name=?]", "feedback[category]"

      assert_select "textarea[name=?]", "feedback[message]"
    end
  end
end

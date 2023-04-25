require 'rails_helper'

RSpec.describe "feedbacks/new", type: :view do
  before(:each) do
    assign(:feedback, Feedback.new(
      user_id: 1,
      category: "MyString",
      message: "MyText"
    ))
  end

  it "renders new feedback form" do
    render

    assert_select "form[action=?][method=?]", feedbacks_path, "post" do

      assert_select "input[name=?]", "feedback[user_id]"

      assert_select "input[name=?]", "feedback[category]"

      assert_select "textarea[name=?]", "feedback[message]"
    end
  end
end

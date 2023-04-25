require 'rails_helper'

RSpec.describe "analytics/new", type: :view do
  before(:each) do
    assign(:analytic, Analytic.new(
      user_id: 1,
      repository_id: 1,
      search_id: 1,
      tag_id: 1,
      view_id: 1,
      rating_id: 1,
      comment_id: 1,
      activity_log_id: 1
    ))
  end

  it "renders new analytic form" do
    render

    assert_select "form[action=?][method=?]", analytics_path, "post" do

      assert_select "input[name=?]", "analytic[user_id]"

      assert_select "input[name=?]", "analytic[repository_id]"

      assert_select "input[name=?]", "analytic[search_id]"

      assert_select "input[name=?]", "analytic[tag_id]"

      assert_select "input[name=?]", "analytic[view_id]"

      assert_select "input[name=?]", "analytic[rating_id]"

      assert_select "input[name=?]", "analytic[comment_id]"

      assert_select "input[name=?]", "analytic[activity_log_id]"
    end
  end
end

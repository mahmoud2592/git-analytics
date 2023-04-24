require 'rails_helper'

RSpec.describe "analytics/edit", type: :view do
  before(:each) do
    @analytic = assign(:analytic, Analytic.create!(
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

  it "renders the edit analytic form" do
    render

    assert_select "form[action=?][method=?]", analytic_path(@analytic), "post" do

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

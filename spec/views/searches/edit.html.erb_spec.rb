require 'rails_helper'

RSpec.describe "searches/edit", type: :view do
  before(:each) do
    @search = assign(:search, Search.create!(
      query: "MyString",
      filters: "MyText",
      result_count: 1,
      user_id: 1
    ))
  end

  it "renders the edit search form" do
    render

    assert_select "form[action=?][method=?]", search_path(@search), "post" do

      assert_select "input[name=?]", "search[query]"

      assert_select "textarea[name=?]", "search[filters]"

      assert_select "input[name=?]", "search[result_count]"

      assert_select "input[name=?]", "search[user_id]"
    end
  end
end

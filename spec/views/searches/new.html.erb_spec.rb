require 'rails_helper'

RSpec.describe "searches/new", type: :view do
  before(:each) do
    assign(:search, Search.new(
      query: "MyString",
      filters: "MyText",
      result_count: 1,
      user_id: 1
    ))
  end

  it "renders new search form" do
    render

    assert_select "form[action=?][method=?]", searches_path, "post" do

      assert_select "input[name=?]", "search[query]"

      assert_select "textarea[name=?]", "search[filters]"

      assert_select "input[name=?]", "search[result_count]"

      assert_select "input[name=?]", "search[user_id]"
    end
  end
end

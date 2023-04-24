require 'rails_helper'

RSpec.describe "commits/index", type: :view do
  before(:each) do
    assign(:commits, [
      Commit.create!(
        sha: "Sha",
        author_name: "Author Name",
        author_email: "Author Email",
        message: "MyText",
        repository_id: 2
      ),
      Commit.create!(
        sha: "Sha",
        author_name: "Author Name",
        author_email: "Author Email",
        message: "MyText",
        repository_id: 2
      )
    ])
  end

  it "renders a list of commits" do
    render
    assert_select "tr>td", text: "Sha".to_s, count: 2
    assert_select "tr>td", text: "Author Name".to_s, count: 2
    assert_select "tr>td", text: "Author Email".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end

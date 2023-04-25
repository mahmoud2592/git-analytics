require 'rails_helper'

RSpec.describe "repositories_tags/index", type: :view do
  before(:each) do
    assign(:repositories_tags, [
      RepositoriesTag.create!(
        repository_id: 2,
        tag_id: 3
      ),
      RepositoriesTag.create!(
        repository_id: 2,
        tag_id: 3
      )
    ])
  end

  it "renders a list of repositories_tags" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end

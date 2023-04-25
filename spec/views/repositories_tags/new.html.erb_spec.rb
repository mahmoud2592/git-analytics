require 'rails_helper'

RSpec.describe "repositories_tags/new", type: :view do
  before(:each) do
    assign(:repositories_tag, RepositoriesTag.new(
      repository_id: 1,
      tag_id: 1
    ))
  end

  it "renders new repositories_tag form" do
    render

    assert_select "form[action=?][method=?]", repositories_tags_path, "post" do

      assert_select "input[name=?]", "repositories_tag[repository_id]"

      assert_select "input[name=?]", "repositories_tag[tag_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "repositories_tags/edit", type: :view do
  before(:each) do
    @repositories_tag = assign(:repositories_tag, RepositoriesTag.create!(
      repository_id: 1,
      tag_id: 1
    ))
  end

  it "renders the edit repositories_tag form" do
    render

    assert_select "form[action=?][method=?]", repositories_tag_path(@repositories_tag), "post" do

      assert_select "input[name=?]", "repositories_tag[repository_id]"

      assert_select "input[name=?]", "repositories_tag[tag_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "users_repositories/new", type: :view do
  before(:each) do
    assign(:users_repository, UsersRepository.new(
      user_id: 1,
      repository_id: 1
    ))
  end

  it "renders new users_repository form" do
    render

    assert_select "form[action=?][method=?]", users_repositories_path, "post" do

      assert_select "input[name=?]", "users_repository[user_id]"

      assert_select "input[name=?]", "users_repository[repository_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "users_repositories/edit", type: :view do
  before(:each) do
    @users_repository = assign(:users_repository, UsersRepository.create!(
      user_id: 1,
      repository_id: 1
    ))
  end

  it "renders the edit users_repository form" do
    render

    assert_select "form[action=?][method=?]", users_repository_path(@users_repository), "post" do

      assert_select "input[name=?]", "users_repository[user_id]"

      assert_select "input[name=?]", "users_repository[repository_id]"
    end
  end
end

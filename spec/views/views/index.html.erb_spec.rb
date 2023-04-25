require 'rails_helper'

RSpec.describe "views/index", type: :view do
  before(:each) do
    assign(:views, [
      View.create!(
        user_id: 2,
        repository_id: 3,
        ip_address: "Ip Address",
        device: "Device",
        duration: 4
      ),
      View.create!(
        user_id: 2,
        repository_id: 3,
        ip_address: "Ip Address",
        device: "Device",
        duration: 4
      )
    ])
  end

  it "renders a list of views" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Ip Address".to_s, count: 2
    assert_select "tr>td", text: "Device".to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end

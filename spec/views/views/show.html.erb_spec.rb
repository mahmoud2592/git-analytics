require 'rails_helper'

RSpec.describe "views/show", type: :view do
  before(:each) do
    @view = assign(:view, View.create!(
      user_id: 2,
      repository_id: 3,
      ip_address: "Ip Address",
      device: "Device",
      duration: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Ip Address/)
    expect(rendered).to match(/Device/)
    expect(rendered).to match(/4/)
  end
end

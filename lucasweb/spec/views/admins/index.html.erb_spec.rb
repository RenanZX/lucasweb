require 'rails_helper'

RSpec.describe "admins/index", type: :view do
  before(:each) do
    assign(:admins, [
      Admin.create!(
        :inicial => "MyText",
        :homepage => "MyText",
        :about => "MyText",
        :contato => "MyText"
      ),
      Admin.create!(
        :inicial => "MyText",
        :homepage => "MyText",
        :about => "MyText",
        :contato => "MyText"
      )
    ])
  end

  it "renders a list of admins" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

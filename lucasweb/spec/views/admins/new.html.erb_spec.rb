require 'rails_helper'

RSpec.describe "admins/new", type: :view do
  before(:each) do
    assign(:admin, Admin.new(
      :inicial => "MyText",
      :homepage => "MyText",
      :about => "MyText",
      :contato => "MyText"
    ))
  end

  it "renders new admin form" do
    render

    assert_select "form[action=?][method=?]", admins_path, "post" do

      assert_select "textarea[name=?]", "admin[inicial]"

      assert_select "textarea[name=?]", "admin[homepage]"

      assert_select "textarea[name=?]", "admin[about]"

      assert_select "textarea[name=?]", "admin[contato]"
    end
  end
end

require 'rails_helper'

RSpec.describe "admins/edit", type: :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :inicial => "MyText",
      :homepage => "MyText",
      :about => "MyText",
      :contato => "MyText"
    ))
  end

  it "renders the edit admin form" do
    render

    assert_select "form[action=?][method=?]", admin_path(@admin), "post" do

      assert_select "textarea[name=?]", "admin[inicial]"

      assert_select "textarea[name=?]", "admin[homepage]"

      assert_select "textarea[name=?]", "admin[about]"

      assert_select "textarea[name=?]", "admin[contato]"
    end
  end
end

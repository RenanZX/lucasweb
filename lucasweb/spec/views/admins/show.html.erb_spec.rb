require 'rails_helper'

RSpec.describe "admins/show", type: :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :inicial => "MyText",
      :homepage => "MyText",
      :about => "MyText",
      :contato => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end

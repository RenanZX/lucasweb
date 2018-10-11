require 'rails_helper'

RSpec.describe "webseries/edit", type: :view do
  before(:each) do
    @webseries = assign(:webseries, Webseries.create!(
      :titulo => "MyString",
      :playlist => "MyText"
    ))
  end

  it "renders the edit webseries form" do
    render

    assert_select "form[action=?][method=?]", webseries_path(@webseries), "post" do

      assert_select "input[name=?]", "webseries[titulo]"

      assert_select "textarea[name=?]", "webseries[playlist]"
    end
  end
end

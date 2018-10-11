require 'rails_helper'

RSpec.describe "webseries/new", type: :view do
  before(:each) do
    assign(:webseries, Webseries.new(
      :titulo => "MyString",
      :playlist => "MyText"
    ))
  end

  it "renders new webseries form" do
    render

    assert_select "form[action=?][method=?]", webseries_index_path, "post" do

      assert_select "input[name=?]", "webseries[titulo]"

      assert_select "textarea[name=?]", "webseries[playlist]"
    end
  end
end

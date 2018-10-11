require 'rails_helper'

RSpec.describe "poemas/new", type: :view do
  before(:each) do
    assign(:poema, Poema.new(
      :titulo => "MyString",
      :corpo => "MyText"
    ))
  end

  it "renders new poema form" do
    render

    assert_select "form[action=?][method=?]", poemas_path, "post" do

      assert_select "input[name=?]", "poema[titulo]"

      assert_select "textarea[name=?]", "poema[corpo]"
    end
  end
end

require 'rails_helper'

RSpec.describe "poemas/edit", type: :view do
  before(:each) do
    @poema = assign(:poema, Poema.create!(
      :titulo => "MyString",
      :corpo => "MyText"
    ))
  end

  it "renders the edit poema form" do
    render

    assert_select "form[action=?][method=?]", poema_path(@poema), "post" do

      assert_select "input[name=?]", "poema[titulo]"

      assert_select "textarea[name=?]", "poema[corpo]"
    end
  end
end

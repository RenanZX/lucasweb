require 'rails_helper'

RSpec.describe "textos/new", type: :view do
  before(:each) do
    assign(:texto, Texto.new(
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new texto form" do
    render

    assert_select "form[action=?][method=?]", textos_path, "post" do

      assert_select "input[name=?]", "texto[title]"

      assert_select "textarea[name=?]", "texto[body]"
    end
  end
end

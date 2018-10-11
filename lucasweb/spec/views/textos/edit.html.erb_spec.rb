require 'rails_helper'

RSpec.describe "textos/edit", type: :view do
  before(:each) do
    @texto = assign(:texto, Texto.create!(
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit texto form" do
    render

    assert_select "form[action=?][method=?]", texto_path(@texto), "post" do

      assert_select "input[name=?]", "texto[title]"

      assert_select "textarea[name=?]", "texto[body]"
    end
  end
end

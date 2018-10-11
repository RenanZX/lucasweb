require 'rails_helper'

RSpec.describe "musicas/new", type: :view do
  before(:each) do
    assign(:musica, Musica.new(
      :titulo => "MyString"
    ))
  end

  it "renders new musica form" do
    render

    assert_select "form[action=?][method=?]", musicas_path, "post" do

      assert_select "input[name=?]", "musica[titulo]"
    end
  end
end

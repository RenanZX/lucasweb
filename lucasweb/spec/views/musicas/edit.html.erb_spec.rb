require 'rails_helper'

RSpec.describe "musicas/edit", type: :view do
  before(:each) do
    @musica = assign(:musica, Musica.create!(
      :titulo => "MyString"
    ))
  end

  it "renders the edit musica form" do
    render

    assert_select "form[action=?][method=?]", musica_path(@musica), "post" do

      assert_select "input[name=?]", "musica[titulo]"
    end
  end
end

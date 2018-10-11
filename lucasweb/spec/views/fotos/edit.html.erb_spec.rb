require 'rails_helper'

RSpec.describe "fotos/edit", type: :view do
  before(:each) do
    @foto = assign(:foto, Foto.create!())
  end

  it "renders the edit foto form" do
    render

    assert_select "form[action=?][method=?]", foto_path(@foto), "post" do
    end
  end
end

require 'rails_helper'

RSpec.describe "fotos/new", type: :view do
  before(:each) do
    assign(:foto, Foto.new())
  end

  it "renders new foto form" do
    render

    assert_select "form[action=?][method=?]", fotos_path, "post" do
    end
  end
end

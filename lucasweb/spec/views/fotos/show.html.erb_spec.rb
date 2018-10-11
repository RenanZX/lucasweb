require 'rails_helper'

RSpec.describe "fotos/show", type: :view do
  before(:each) do
    @foto = assign(:foto, Foto.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

require 'rails_helper'

RSpec.describe "fotos/index", type: :view do
  before(:each) do
    assign(:fotos, [
      Foto.create!(),
      Foto.create!()
    ])
  end

  it "renders a list of fotos" do
    render
  end
end

require 'rails_helper'

RSpec.describe "musicas/show", type: :view do
  before(:each) do
    @musica = assign(:musica, Musica.create!(
      :titulo => "Titulo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
  end
end

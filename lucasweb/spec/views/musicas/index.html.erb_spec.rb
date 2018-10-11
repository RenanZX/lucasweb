require 'rails_helper'

RSpec.describe "musicas/index", type: :view do
  before(:each) do
    assign(:musicas, [
      Musica.create!(
        :titulo => "Titulo"
      ),
      Musica.create!(
        :titulo => "Titulo"
      )
    ])
  end

  it "renders a list of musicas" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
  end
end

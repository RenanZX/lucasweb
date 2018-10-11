require 'rails_helper'

RSpec.describe "poemas/show", type: :view do
  before(:each) do
    @poema = assign(:poema, Poema.create!(
      :titulo => "Titulo",
      :corpo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/MyText/)
  end
end

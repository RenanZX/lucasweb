require 'rails_helper'

RSpec.describe "webseries/show", type: :view do
  before(:each) do
    @webseries = assign(:webseries, Webseries.create!(
      :titulo => "Titulo",
      :playlist => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/MyText/)
  end
end

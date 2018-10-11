require 'rails_helper'

RSpec.describe "poemas/index", type: :view do
  before(:each) do
    assign(:poemas, [
      Poema.create!(
        :titulo => "Titulo",
        :corpo => "MyText"
      ),
      Poema.create!(
        :titulo => "Titulo",
        :corpo => "MyText"
      )
    ])
  end

  it "renders a list of poemas" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

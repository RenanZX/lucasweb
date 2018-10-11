require 'rails_helper'

RSpec.describe "webseries/index", type: :view do
  before(:each) do
    assign(:webseries, [
      Webseries.create!(
        :titulo => "Titulo",
        :playlist => "MyText"
      ),
      Webseries.create!(
        :titulo => "Titulo",
        :playlist => "MyText"
      )
    ])
  end

  it "renders a list of webseries" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

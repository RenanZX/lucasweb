require 'rails_helper'

RSpec.describe "textos/index", type: :view do
  before(:each) do
    assign(:textos, [
      Texto.create!(
        :title => "Title",
        :body => "MyText"
      ),
      Texto.create!(
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of textos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

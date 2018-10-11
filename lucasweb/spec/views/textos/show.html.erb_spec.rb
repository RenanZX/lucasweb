require 'rails_helper'

RSpec.describe "textos/show", type: :view do
  before(:each) do
    @texto = assign(:texto, Texto.create!(
      :title => "Title",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end

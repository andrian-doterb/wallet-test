require 'rails_helper'

RSpec.describe "stocks/show", type: :view do
  before(:each) do
    assign(:stock, Stock.create!(
      name: "Name",
      code: "Code",
      type: "Type",
      balance: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/9.99/)
  end
end

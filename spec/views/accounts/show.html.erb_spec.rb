require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) do
    assign(:account, Account.create!(
      customer: nil,
      number: "Number",
      balance: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/9.99/)
  end
end

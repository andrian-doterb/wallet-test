require 'rails_helper'

RSpec.describe "transfers/show", type: :view do
  before(:each) do
    assign(:transfer, Transfer.create!(
      code: "Code",
      transaction_type: "Transaction Type",
      amount: "Amount",
      stock_id: "Stock",
      sender_id: "Sender",
      receiver_id: "Receiver",
      status: "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Transaction Type/)
    expect(rendered).to match(/Amount/)
    expect(rendered).to match(/Stock/)
    expect(rendered).to match(/Sender/)
    expect(rendered).to match(/Receiver/)
    expect(rendered).to match(/Status/)
  end
end

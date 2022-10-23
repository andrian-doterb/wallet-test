require 'rails_helper'

RSpec.describe "withdraws/index", type: :view do
  before(:each) do
    assign(:withdraws, [
      Withdraw.create!(
        code: "Code",
        transaction_type: "Transaction Type",
        amount: "Amount",
        stock_id: "Stock",
        sender_id: "Sender",
        receiver_id: "Receiver",
        status: "Status"
      ),
      Withdraw.create!(
        code: "Code",
        transaction_type: "Transaction Type",
        amount: "Amount",
        stock_id: "Stock",
        sender_id: "Sender",
        receiver_id: "Receiver",
        status: "Status"
      )
    ])
  end

  it "renders a list of withdraws" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Code".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Transaction Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Amount".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Stock".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Sender".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Receiver".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Status".to_s), count: 2
  end
end

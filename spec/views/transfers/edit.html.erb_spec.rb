require 'rails_helper'

RSpec.describe "transfers/edit", type: :view do
  let(:transfer) {
    Transfer.create!(
      code: "MyString",
      transaction_type: "MyString",
      amount: "MyString",
      stock_id: "MyString",
      sender_id: "MyString",
      receiver_id: "MyString",
      status: "MyString"
    )
  }

  before(:each) do
    assign(:transfer, transfer)
  end

  it "renders the edit transfer form" do
    render

    assert_select "form[action=?][method=?]", transfer_path(transfer), "post" do

      assert_select "input[name=?]", "transfer[code]"

      assert_select "input[name=?]", "transfer[transaction_type]"

      assert_select "input[name=?]", "transfer[amount]"

      assert_select "input[name=?]", "transfer[stock_id]"

      assert_select "input[name=?]", "transfer[sender_id]"

      assert_select "input[name=?]", "transfer[receiver_id]"

      assert_select "input[name=?]", "transfer[status]"
    end
  end
end

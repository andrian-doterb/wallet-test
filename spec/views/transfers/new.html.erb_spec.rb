require 'rails_helper'

RSpec.describe "transfers/new", type: :view do
  before(:each) do
    assign(:transfer, Transfer.new(
      code: "MyString",
      transaction_type: "MyString",
      amount: "MyString",
      stock_id: "MyString",
      sender_id: "MyString",
      receiver_id: "MyString",
      status: "MyString"
    ))
  end

  it "renders new transfer form" do
    render

    assert_select "form[action=?][method=?]", transfers_path, "post" do

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

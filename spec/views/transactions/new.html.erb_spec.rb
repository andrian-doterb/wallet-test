require 'rails_helper'

RSpec.describe "transactions/new", type: :view do
  before(:each) do
    assign(:transaction, Transaction.new(
      code: "MyString",
      transaction_type: "MyString",
      amount: "MyString",
      stock_id: "MyString",
      sender_id: "MyString",
      receiver_id: "MyString",
      status: "MyString"
    ))
  end

  it "renders new transaction form" do
    render

    assert_select "form[action=?][method=?]", transactions_path, "post" do

      assert_select "input[name=?]", "transaction[code]"

      assert_select "input[name=?]", "transaction[transaction_type]"

      assert_select "input[name=?]", "transaction[amount]"

      assert_select "input[name=?]", "transaction[stock_id]"

      assert_select "input[name=?]", "transaction[sender_id]"

      assert_select "input[name=?]", "transaction[receiver_id]"

      assert_select "input[name=?]", "transaction[status]"
    end
  end
end

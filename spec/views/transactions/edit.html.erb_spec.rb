require 'rails_helper'

RSpec.describe "transactions/edit", type: :view do
  let(:transaction) {
    Transaction.create!(
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
    assign(:transaction, transaction)
  end

  it "renders the edit transaction form" do
    render

    assert_select "form[action=?][method=?]", transaction_path(transaction), "post" do

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

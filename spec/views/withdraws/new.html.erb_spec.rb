require 'rails_helper'

RSpec.describe "withdraws/new", type: :view do
  before(:each) do
    assign(:withdraw, Withdraw.new(
      code: "MyString",
      transaction_type: "MyString",
      amount: "MyString",
      stock_id: "MyString",
      sender_id: "MyString",
      receiver_id: "MyString",
      status: "MyString"
    ))
  end

  it "renders new withdraw form" do
    render

    assert_select "form[action=?][method=?]", withdraws_path, "post" do

      assert_select "input[name=?]", "withdraw[code]"

      assert_select "input[name=?]", "withdraw[transaction_type]"

      assert_select "input[name=?]", "withdraw[amount]"

      assert_select "input[name=?]", "withdraw[stock_id]"

      assert_select "input[name=?]", "withdraw[sender_id]"

      assert_select "input[name=?]", "withdraw[receiver_id]"

      assert_select "input[name=?]", "withdraw[status]"
    end
  end
end

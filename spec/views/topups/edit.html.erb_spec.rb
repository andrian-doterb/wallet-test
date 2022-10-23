require 'rails_helper'

RSpec.describe "topups/edit", type: :view do
  let(:topup) {
    Topup.create!(
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
    assign(:topup, topup)
  end

  it "renders the edit topup form" do
    render

    assert_select "form[action=?][method=?]", topup_path(topup), "post" do

      assert_select "input[name=?]", "topup[code]"

      assert_select "input[name=?]", "topup[transaction_type]"

      assert_select "input[name=?]", "topup[amount]"

      assert_select "input[name=?]", "topup[stock_id]"

      assert_select "input[name=?]", "topup[sender_id]"

      assert_select "input[name=?]", "topup[receiver_id]"

      assert_select "input[name=?]", "topup[status]"
    end
  end
end

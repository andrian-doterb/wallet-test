require 'rails_helper'

RSpec.describe "accounts/edit", type: :view do
  let(:account) {
    Account.create!(
      customer: nil,
      number: "MyString",
      balance: "9.99"
    )
  }

  before(:each) do
    assign(:account, account)
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(account), "post" do

      assert_select "input[name=?]", "account[customer_id]"

      assert_select "input[name=?]", "account[number]"

      assert_select "input[name=?]", "account[balance]"
    end
  end
end

require 'rails_helper'

RSpec.describe "stocks/edit", type: :view do
  let(:stock) {
    Stock.create!(
      name: "MyString",
      code: "MyString",
      type: "",
      balance: "9.99"
    )
  }

  before(:each) do
    assign(:stock, stock)
  end

  it "renders the edit stock form" do
    render

    assert_select "form[action=?][method=?]", stock_path(stock), "post" do

      assert_select "input[name=?]", "stock[name]"

      assert_select "input[name=?]", "stock[code]"

      assert_select "input[name=?]", "stock[type]"

      assert_select "input[name=?]", "stock[balance]"
    end
  end
end

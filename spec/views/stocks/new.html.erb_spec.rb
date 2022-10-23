require 'rails_helper'

RSpec.describe "stocks/new", type: :view do
  before(:each) do
    assign(:stock, Stock.new(
      name: "MyString",
      code: "MyString",
      type: "",
      balance: "9.99"
    ))
  end

  it "renders new stock form" do
    render

    assert_select "form[action=?][method=?]", stocks_path, "post" do

      assert_select "input[name=?]", "stock[name]"

      assert_select "input[name=?]", "stock[code]"

      assert_select "input[name=?]", "stock[type]"

      assert_select "input[name=?]", "stock[balance]"
    end
  end
end

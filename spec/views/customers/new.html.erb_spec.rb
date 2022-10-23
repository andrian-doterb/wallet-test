require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      username: "MyString",
      full_name: "MyString",
      email: "MyString",
      phone_number: "MyString"
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input[name=?]", "customer[username]"

      assert_select "input[name=?]", "customer[full_name]"

      assert_select "input[name=?]", "customer[email]"

      assert_select "input[name=?]", "customer[phone_number]"
    end
  end
end

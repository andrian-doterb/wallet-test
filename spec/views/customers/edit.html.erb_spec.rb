require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  let(:customer) {
    Customer.create!(
      username: "MyString",
      full_name: "MyString",
      email: "MyString",
      phone_number: "MyString"
    )
  }

  before(:each) do
    assign(:customer, customer)
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(customer), "post" do

      assert_select "input[name=?]", "customer[username]"

      assert_select "input[name=?]", "customer[full_name]"

      assert_select "input[name=?]", "customer[email]"

      assert_select "input[name=?]", "customer[phone_number]"
    end
  end
end

require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        username: "Username",
        full_name: "Full Name",
        email: "Email",
        phone_number: "Phone Number"
      ),
      Customer.create!(
        username: "Username",
        full_name: "Full Name",
        email: "Email",
        phone_number: "Phone Number"
      )
    ])
  end

  it "renders a list of customers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Username".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Full Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone Number".to_s), count: 2
  end
end

require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    assign(:customer, Customer.create!(
      username: "Username",
      full_name: "Full Name",
      email: "Email",
      phone_number: "Phone Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Full Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone Number/)
  end
end

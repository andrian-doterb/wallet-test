FactoryBot.define do
  factory :transaction do
    code { "MyString" }
    transaction_type { "MyString" }
    amount { "9.99" }
    sender { nil }
    receiver { nil }
    status { "MyString" }
  end
end

FactoryBot.define do
  factory :account do
    customer { nil }
    number { "MyString" }
    balance { "9.99" }
  end
end

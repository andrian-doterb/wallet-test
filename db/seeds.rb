puts 'Please be patient on creating dummy data!'
10.times do |index|
  Customer.create(
    full_name: Faker::Name.unique.name,
    username: "customer#{index}",
    email: Faker::Internet.unique.email,
    born_date: Faker::Date.birthday(min_age: 17, max_age: 100)
  )
end

Stock.create(name: 'Topup 1', code: 'topup-1', stock_type: :topup, balance: 10000)
Stock.create(name: 'Topup 2', code: 'topup-2', stock_type: :topup, balance: 5000)
Stock.create(name: 'Withdraw 1', code: 'withdraw-1', stock_type: :withdraw, balance: 1000)
puts 'Success create dummy data!'

puts 'Please be patient on creating dummy data!'
10.times do |index|
  Customer.create(
    full_name: Faker::Name.unique.name,
    username: "customer#{index}",
    email: Faker::Internet.unique.email,
    born_date: Faker::Date.birthday(min_age: 17, max_age: 100)
  )
end

Stock.create(name: 'Top Up 1', code: 'tp01', stock_type: :topup, balance: 3500)
Stock.create(name: 'Top Up 2', code: 'tp02', stock_type: :topup, balance: 3500)
Stock.create(name: 'Withdraw 1', code: 'wd01', stock_type: :withdraw, balance: 2000)
puts 'Success create dummy data!'

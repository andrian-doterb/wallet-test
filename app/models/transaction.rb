class Transaction < ApplicationRecord
  extend Enumerize

  belongs_to :sender, class_name: 'Account'
  belongs_to :receiver, class_name: 'Account'
  belongs_to :stocks

  enumerize :transaction_type, in: %i[topup transfer withdraw], scope: :shallow
end

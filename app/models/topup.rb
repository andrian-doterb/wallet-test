class Topup < Transaction
  belongs_to :stock, class_name: 'Stock', foreign_key: 'sender_id'
  belongs_to :account, class_name: 'Account', foreign_key: 'receiver_id'

  validate :sufficient_balance?, :minimum_topup

  def sufficient_balance?
    errors.add(:stock, 'not available.') if stock.balance <= amount
  end

  def minimum_topup
    errors.add(:amount, 'nominal too low, minimum 10') if amount <= 9.9
  end
end

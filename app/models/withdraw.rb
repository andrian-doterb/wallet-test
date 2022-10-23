class Withdraw < Transaction
  belongs_to :sender, class_name: 'Account'
  belongs_to :receiver, class_name: 'Stock'

  before_create :set_transaction_type

  def set_transaction_type
    self.transaction_type = :withdraw
  end
end

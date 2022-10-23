class Transfer < Transaction
  before_create :set_transaction_type

  def set_transaction_type
    self.transaction_type = 'Transfer'
  end
end

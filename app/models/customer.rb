class Customer < ApplicationRecord
  has_one :account

  validates_presence_of :username, :full_name, :email
  validates_uniqueness_of :username, :email

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end

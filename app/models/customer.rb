class Customer < ApplicationRecord
  validates_presence_of :username, :full_name, :email
  validates_uniqueness_of :username, :email
end

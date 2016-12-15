class User < ApplicationRecord
  has_many :user_bills
  has_many :bills, through: :user_bills
  has_many :comments
end

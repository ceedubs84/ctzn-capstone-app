class User < ApplicationRecord
  has_many :user_bills
  has_many :bills, through: :user_bills
  has_many :comments
  has_many :checkpoints
end

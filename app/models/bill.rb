class Bill < ApplicationRecord
  has_many :user_bills
  has_many :users, through: :user_bills
  has_many :comments
  has_many :bill_categories
  has_many :categories, through: :bill_categories
end
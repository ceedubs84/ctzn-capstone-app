class Category < ApplicationRecord
  has_many :bills, through: :bill_categories
end

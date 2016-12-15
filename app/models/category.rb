class Category < ApplicationRecord
  has_many :bills, thorugh: :bill_categories
end

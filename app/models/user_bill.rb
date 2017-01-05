class UserBill < ApplicationRecord
  belongs_to :user
  has_many :checkpoints
end

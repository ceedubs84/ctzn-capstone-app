class UserBill < ApplicationRecord
  belongs_to :user
  has_many :checkpoint_actions
end

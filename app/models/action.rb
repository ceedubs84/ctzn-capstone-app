class Action < ApplicationRecord
  has_many :checkpoint_actions
  has_many :user_bills, through: :checkpoint_actions
end

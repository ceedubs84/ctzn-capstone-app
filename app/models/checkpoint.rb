class Checkpoint < ApplicationRecord
  belongs_to :user_bill
  belongs_to :user
  has_many :checkpoint_actions
  has_many :actions, through: :checkpoint_actions
end

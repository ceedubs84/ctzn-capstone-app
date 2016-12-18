class Action < ApplicationRecord
  has_many :checkpoint_actions
  has_many :checkpoints, through: :checkpoint_actions
end

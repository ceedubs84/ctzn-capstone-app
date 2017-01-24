class UserBill < ApplicationRecord
  belongs_to :user
  has_many :checkpoint_actions

  def progress_percent
    num_checkpoint_actions = 10
    num_completed = 3
    return (num_completed / num_checkpoint_actions.to_f) * 100
  end
end

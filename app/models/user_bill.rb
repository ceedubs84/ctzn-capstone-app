class UserBill < ApplicationRecord
  belongs_to :user
  has_many :checkpoint_actions

  def progress_percent
    num_checkpoint_actions = checkpoint_actions.count # total number
    num_completed = checkpoint_actions.where(status: "complete").count
    return (num_completed / num_checkpoint_actions.to_f) * 100
  end
end

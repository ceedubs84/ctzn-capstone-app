class UserBill < ApplicationRecord
  belongs_to :user
  has_many :checkpoint_actions

  def progress_percent
    num_checkpoint_actions = user_bill.checkpoint_actions
    num_completed = num_checkpoint_actions.where(status: "complete")
    return (num_completed / num_checkpoint_actions.to_f) * 100
  end
end

class CheckpointAction < ApplicationRecord
  belongs_to :user_bill
  belongs_to :user
  belongs_to :action
end

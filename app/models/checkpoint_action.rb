class CheckpointAction < ApplicationRecord
  belongs_to :checkpoint
  belongs_to :action
end

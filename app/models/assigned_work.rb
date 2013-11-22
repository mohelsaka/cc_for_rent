class AssignedWork < ActiveRecord::Base
  attr_accessible :ccjob_id, :input_portion, :pc_owner_id, :progress, :string

  belongs_to :ccjob
  belongs_to :pc_owner

  scope :unassigned_work, ->{ where(pc_owner_id: nil) }

  before_create :init_progress

  def init_progress
    self.status = 'pending'
    self.progress = 0
  end
end

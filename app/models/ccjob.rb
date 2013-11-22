class Ccjob < ActiveRecord::Base
  attr_accessible :input_bucket_url, :job_file_url, :name, :output_bucket_url, :status

  has_many :assigned_works

  before_create :init_status
  after_create :create_pending_assigned_works

  scope :pending, ->{ where(status: 'pending') }

  PORTIONS = 3

  def init_status
    self.status = 'pending'
  end

  def create_pending_assigned_works
    PORTIONS.times do |i|
      AssignedWork.create(ccjob_id: self.id, input_portion: "portion_#{i}")
    end
  end
end

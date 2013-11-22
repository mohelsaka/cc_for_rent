class Ccjob < ActiveRecord::Base
  attr_accessible :input_bucket_url, :job_file_url, :name, :output_bucket_url, :status
end

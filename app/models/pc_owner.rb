class PcOwner < ActiveRecord::Base
  attr_accessible :ip, :name, :revenu

  has_many :assigned_work
end

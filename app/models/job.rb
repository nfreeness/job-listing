class Job < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :user

  scope :recent, -> { @jobs = Job.all.order("updated_at DESC")}
end

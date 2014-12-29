class Vote < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :nomination

  validates :candidate, presence: true
  validates :nomination, presence: true
  validates :ip, presence: true
end

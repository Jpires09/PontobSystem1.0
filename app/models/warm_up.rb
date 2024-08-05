class WarmUp < ApplicationRecord
  belongs_to :session

  validates :joint, :cardio, :skill, presence: true
end

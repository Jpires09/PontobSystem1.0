class Session < ApplicationRecord
  has_one :physical
  has_one :warm_up, class_name: 'WarmUp'

  accepts_nested_attributes_for :physical
  accepts_nested_attributes_for :warm_up

  validates :date, :content, :objective, :skill, presence: true
  validates_associated :physical, :warm_up
end

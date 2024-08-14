class Plan < ApplicationRecord
  has_many :plans_assignments
  has_many :groups, through: :plans_assignments
  has_many :clients, through: :plans_assignments

  validates :name, :frequency, presence: true
end

class PlanAssignment < ApplicationRecord
  belongs_to :plan
  belongs_to :group
  belongs_to :client

  validates :plan_id, :group_id, :client_id, presence: true
end
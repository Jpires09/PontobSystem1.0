class Client < ApplicationRecord
  has_many :attendances
  has_many :enrollments
  has_many :groups, through: :enrollments

  def add_credits(plan)
    self.credits += plan.credits
    save
  end
end

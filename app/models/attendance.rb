class Attendance < ApplicationRecord
  belongs_to :client
  belongs_to :group
  belongs_to :calendar_day

  validate :sufficient_credits

  after_create :deduct_credits

  private

  def sufficient_credits
    if client.credits < 1
      errors.add(:client, "não possui créditos suficientes.")
    end
  end

  def deduct_credits
    client.update(credits: client.credits - 1)
  end
end

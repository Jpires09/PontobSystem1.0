class Physical < ApplicationRecord
  belongs_to :session

  validates :group, inclusion: { in: %w[MI TR MS], message: "deve ser MI, TR ou MS" }
  validates :phase, inclusion: { in: %w[1 2 3 4], message: "deve ser 1, 2, 3 ou 4" }
  validates :exercise, presence: true 
end

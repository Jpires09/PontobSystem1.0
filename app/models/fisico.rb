class Fisico < ApplicationRecord
  belongs_to :aula

  validates :grupo, inclusion: { in: %w[MI TR MS], message: "deve ser MI, TR ou MS" }
  validates :fase, inclusion: { in: %w[1 2 3 4], message: "deve ser 1, 2, 3 ou 4" }
  validates :exercicio, presence: true 
end

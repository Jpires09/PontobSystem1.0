class Aquecimento < ApplicationRecord
  belongs_to :aula

  validates :articular, :cardio, :tecnico, presence: true
end

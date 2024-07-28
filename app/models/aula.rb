class Aula < ApplicationRecord
  has_one :fisico
  has_one :aquecimento

  accepts_nested_attributes_for :fisico
  accepts_nested_attributes_for :aquecimento

  validates :data, :conteudo, :objetivo, :tecnico, presence: true
  validates_associated :fisico, :aquecimento
end

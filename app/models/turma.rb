class Turma < ApplicationRecord
  belongs_to :semanal, optional: true 
end

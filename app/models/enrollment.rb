class Enrollment < ApplicationRecord
  belongs_to :turma
  belongs_to :client
end
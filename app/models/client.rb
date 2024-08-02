class Client < ApplicationRecord
  has_many :enrollments
  has_many :turmas, through: :enrollments
end

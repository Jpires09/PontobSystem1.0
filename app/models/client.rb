class Client < ApplicationRecord
  has_many :enrollments
  has_many :groups, through: :enrollments
end

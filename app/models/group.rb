class Group < ApplicationRecord
  belongs_to :semanal, optional: true 
  belongs_to :professor_titular, class_name: 'Employee', foreign_key: 'professor_titular_id'
  has_many :enrollments
  has_many :clients, through: :enrollments
end

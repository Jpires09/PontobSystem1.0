class Employee < ApplicationRecord
  has_many :groups, foreign_key: 'professor_titular_id'
end

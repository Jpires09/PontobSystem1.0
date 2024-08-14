class CalendarDay < ApplicationRecord
  belongs_to :calendar
  has_many :events
  has_many :groups, through: :events

  enum skill_group: {group_1: 1, group_2: 2, group_3: 3, group_4: 4}
  enum training_phase: {phase_1: 1, phase_2: 2, phase_3: 3, phase_4: 4}

  validates :skill_group, inclusion: {in: skill_groups.keys}
  validates :training_phase, inclusion: {in: training_phases.keys}
end

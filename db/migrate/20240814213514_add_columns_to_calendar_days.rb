class AddColumnsToCalendarDays < ActiveRecord::Migration[7.1]
  def change
    add_column :calendar_days, :skill_group, :integer, default: 0
    add_column :calendar_days, :trainning_phase, :integer, default: 0
  end
end

class RenameTrainningPhaseToTrainingPhaseInCalendarDays < ActiveRecord::Migration[7.1]
  def change
    rename_column :calendar_days, :trainning_phase, :training_phase
  end
end

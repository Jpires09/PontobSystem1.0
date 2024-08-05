class RenameColumnsInWarmUps < ActiveRecord::Migration[7.1]
  def change
    rename_column :warm_ups, :articular, :joint
    rename_column :warm_ups, :tecnico , :skill
  end
end

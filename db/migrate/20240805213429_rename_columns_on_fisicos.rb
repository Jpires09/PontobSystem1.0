class RenameColumnsOnFisicos < ActiveRecord::Migration[7.1]
  def change
    rename_column :fisicos, :fase, :phase
    rename_column :fisicos, :grupo, :group
    rename_column :fisicos, :exercicio, :exercise
  end
end

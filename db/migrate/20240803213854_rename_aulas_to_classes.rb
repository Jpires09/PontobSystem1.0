class RenameAulasToClasses < ActiveRecord::Migration[7.1]
  def change
    rename_table :aulas, :classes
  end
end

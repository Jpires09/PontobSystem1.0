class RenameTurmasToSlots < ActiveRecord::Migration[7.1]
  def change
    rename_table :turmas, :slots
  end
end

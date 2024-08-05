class RenameClassesToSessions < ActiveRecord::Migration[7.1]
  def change
    rename_table :classes, :sessions
  end
end

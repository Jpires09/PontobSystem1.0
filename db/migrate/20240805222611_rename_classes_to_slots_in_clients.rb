class RenameClassesToSlotsInClients < ActiveRecord::Migration[7.1]
  def change
    rename_column :clients, :classes, :slots
  end
end

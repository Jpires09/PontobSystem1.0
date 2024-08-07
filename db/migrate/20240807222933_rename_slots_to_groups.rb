class RenameSlotsToGroups < ActiveRecord::Migration[7.1]
  def change
    rename_table :slots, :groups
    rename_column :clients, :slots, :groups
    rename_column :enrollments, :slot_id, :group_id
    rename_column :semanals, :turmas_id, :groups_id
  end
end

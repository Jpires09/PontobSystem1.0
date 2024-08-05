class RenameAulaIdToSessionIdInPhysicals < ActiveRecord::Migration[7.1]
  def change
    rename_column :physicals, :aula_id, :session_id
  end
end

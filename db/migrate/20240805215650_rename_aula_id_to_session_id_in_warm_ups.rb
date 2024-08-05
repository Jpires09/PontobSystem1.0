class RenameAulaIdToSessionIdInWarmUps < ActiveRecord::Migration[7.1]
  def change
    rename_column :warm_ups, :aula_id, :session_id
  end
end

class AddSemanalIdToTurmas < ActiveRecord::Migration[7.1]
  def change
    add_column :turmas, :semanal_id, :integer
  end
end

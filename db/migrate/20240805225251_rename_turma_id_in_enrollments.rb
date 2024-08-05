class RenameTurmaIdInEnrollments < ActiveRecord::Migration[7.1]
  def change
    rename_column :enrollments, :turma_id, :slot_id
  end
end

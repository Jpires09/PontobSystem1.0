class AddProfessorTitularToTurmas < ActiveRecord::Migration[6.1]
  def change
    add_reference :turmas, :professor_titular, foreign_key: { to_table: :employees }, default: 1
    
    # Update existing records to set the default value
    reversible do |dir|
      dir.up do
        Turma.update_all(professor_titular_id: 1)
      end
    end
  end
end

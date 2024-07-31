class CreateTurmas < ActiveRecord::Migration[7.1]
  def change
    create_table :turmas do |t|
      t.string :dia_da_semana
      t.string :horario

      t.timestamps
    end
  end
end

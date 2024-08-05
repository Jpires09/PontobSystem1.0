class RenameColumnsInTurmas < ActiveRecord::Migration[7.1]
  def change
    rename_column :turmas, :dia_da_semana, :day
    rename_column :turmas, :horario, :time
    rename_column :turmas, :faixa_etaria, :age
    rename_column :turmas, :modalidade, :modality
  end
end

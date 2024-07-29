class ChangeTecnicoInAulasToText < ActiveRecord::Migration[7.1]
  def change
    change_column :aulas, :tecnico, :text
  end
end

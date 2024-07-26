class AddTecnicoToAulas < ActiveRecord::Migration[7.1]
  def change
    add_column :aulas, :tecnico, :string
  end
end

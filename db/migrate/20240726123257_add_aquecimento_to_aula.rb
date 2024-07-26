class AddAquecimentoToAula < ActiveRecord::Migration[7.1]
  def change
    add_column :aulas, :aquecimento, :text
  end
end

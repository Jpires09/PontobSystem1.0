class RemaneColumnsInClasses < ActiveRecord::Migration[7.1]
  def change
    rename_column :classes, :data, :date
    rename_column :classes, :conteudo, :content
    rename_column :classes, :objetivo, :objective
    rename_column :classes, :tecnico, :skill
    rename_column :classes, :aquecimento, :warm_up
    rename_column :classes, :fisico, :physical
  end
end

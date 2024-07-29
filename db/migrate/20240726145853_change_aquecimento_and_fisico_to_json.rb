class ChangeAquecimentoAndFisicoToJson < ActiveRecord::Migration[7.1]
  def change
    change_column :aulas, :aquecimento, :json, default: {}
    change_column :aulas, :fisico, :json, default: {}
  end
end

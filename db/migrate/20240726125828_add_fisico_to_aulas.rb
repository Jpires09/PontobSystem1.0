class AddFisicoToAulas < ActiveRecord::Migration[7.1]
  def change
    add_column :aulas, :fisico, :text
  end
end

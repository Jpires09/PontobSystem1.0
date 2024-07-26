class CreateAulas < ActiveRecord::Migration[7.1]
  def change
    create_table :aulas do |t|
      t.date :data
      t.string :conteudo
      t.string :objetivo

      t.timestamps
    end
  end
end

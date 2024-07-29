class CreateFisicos < ActiveRecord::Migration[7.1]
  def change
    create_table :fisicos do |t|
      t.string :grupo
      t.string :fase
      t.string :exercicio
      t.references :aula, null: false, foreign_key: true

      t.timestamps
    end
  end
end

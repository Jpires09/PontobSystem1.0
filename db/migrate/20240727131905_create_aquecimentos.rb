class CreateAquecimentos < ActiveRecord::Migration[7.1]
  def change
    create_table :aquecimentos do |t|
      t.string :articular
      t.string :cardio
      t.string :tecnico
      t.references :aula, null: false, foreign_key: true

      t.timestamps
    end
  end
end

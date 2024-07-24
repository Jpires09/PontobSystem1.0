class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.date :birth_date
      t.string :plan
      t.string :classes

      t.timestamps
    end
  end
end

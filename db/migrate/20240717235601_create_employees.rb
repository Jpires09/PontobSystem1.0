class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.date :admition

      t.timestamps
    end
  end
end

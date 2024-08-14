class CreatePlans < ActiveRecord::Migration[7.1]
  def change
    create_table :plans do |t|
      t.string :name
      t.string :frequency
      t.text :description

      t.timestamps
    end
  end
end

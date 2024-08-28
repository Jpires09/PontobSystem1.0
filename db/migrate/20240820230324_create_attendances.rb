class CreateAttendances < ActiveRecord::Migration[7.1]
  def change
    create_table :attendances do |t|
      t.references :client, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.references :calendar_day, null: false, foreign_key: true

      t.timestamps
    end
  end
end

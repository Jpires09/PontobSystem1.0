class CreateCalendarDays < ActiveRecord::Migration[7.1]
  def change
    create_table :calendar_days do |t|
      t.date :date
      t.references :calendar, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end

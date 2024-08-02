class CreateEnrollments < ActiveRecord::Migration[7.1]
  def change
    create_table :enrollments do |t|
      t.references :turma, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end

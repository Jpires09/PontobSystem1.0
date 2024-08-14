class CreatePlanAssignments < ActiveRecord::Migration[7.1]
  def change
    create_table :plan_assignments do |t|
      t.references :special_plan, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end

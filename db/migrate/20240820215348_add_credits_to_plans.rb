class AddCreditsToPlans < ActiveRecord::Migration[7.1]
  def change
    add_column :plans, :credits, :integer
  end
end

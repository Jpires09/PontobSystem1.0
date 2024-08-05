class RenameAquecimentosToWarmUps < ActiveRecord::Migration[7.1]
  def change
    rename_table :aquecimentos, :warm_ups
  end
end

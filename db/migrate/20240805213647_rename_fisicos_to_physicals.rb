class RenameFisicosToPhysicals < ActiveRecord::Migration[7.1]
  def change
    rename_table :fisicos, :physicals
  end
end

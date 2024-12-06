class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.references :calendar_day, null: false, foreign_key: true
      t.references :session, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      # Adicione outras colunas aqui, se necessário
      t.string :event_type, null: false, default: "session"
      t.text :notes, null: false, default: "Aula agendada padrão"

      t.timestamps
    end
  end
end

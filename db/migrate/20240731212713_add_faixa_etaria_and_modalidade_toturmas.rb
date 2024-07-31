class AddFaixaEtariaAndModalidadeToturmas < ActiveRecord::Migration[7.1]
  def change
    add_column :turmas, :faixa_etaria, :string
    add_column :turmas, :modalidade, :string
  end
end

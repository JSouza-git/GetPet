class CreateServicos < ActiveRecord::Migration[6.1]
  def change
    create_table :servicos do |t|
      t.string :nome
      t.text :descricao
      t.string :duracao
      t.string :valor
      t.text :observacoes

      t.timestamps
    end
  end
end

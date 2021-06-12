class CreateCargos < ActiveRecord::Migration[6.1]
  def change
    create_table :cargos do |t|
      t.string :nome
      t.text :descricao
      t.string :permissao

      t.timestamps
    end
  end
end

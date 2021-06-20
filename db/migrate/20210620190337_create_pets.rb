class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :nome
      t.string :raca
      t.string :cor
      t.string :idade
      t.string :porte
      t.text :observacao
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end

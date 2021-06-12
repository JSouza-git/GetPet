class CreateUsuarioCargos < ActiveRecord::Migration[6.1]
  def change
    create_table :usuario_cargos do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :cargo, null: false, foreign_key: true

      t.timestamps
    end
  end
end

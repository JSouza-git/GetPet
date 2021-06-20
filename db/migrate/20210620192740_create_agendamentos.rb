class CreateAgendamentos < ActiveRecord::Migration[6.1]
  def change
    create_table :agendamentos do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :servico, null: false, foreign_key: true
      t.references :usuario, null: false, foreign_key: true
      t.string :data
      t.text :observacao

      t.timestamps
    end
  end
end

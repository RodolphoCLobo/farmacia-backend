class CreateLotes < ActiveRecord::Migration[8.0]
  def change
    create_table :lotes do |t|
      t.string :numero_lote
      t.date :data_fabricacao
      t.date :data_validade
      t.references :produto, foreign_key: true

      t.timestamps
    end
  end
end

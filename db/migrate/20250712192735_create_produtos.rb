class CreateProdutos < ActiveRecord::Migration[8.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.decimal :valor_compra, precision: 10, scale: 2
      t.decimal :valor_venda, precision: 10, scale: 2
      t.string :codigo_de_barras
      t.integer :estoque_minimo
      t.references :fabricante, foreign_key: true
      t.references :principio_ativo, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePrincipioAtivos < ActiveRecord::Migration[8.0]
  def change
    create_table :principio_ativos do |t|
      t.string :nome

      t.timestamps
    end
  end
end

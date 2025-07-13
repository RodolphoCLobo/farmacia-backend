class CreateFabricantes < ActiveRecord::Migration[8.0]
  def change
    create_table :fabricantes do |t|
      t.string :nome

      t.timestamps
    end
  end
end

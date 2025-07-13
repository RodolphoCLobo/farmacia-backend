class AddQuantidadeToLotes < ActiveRecord::Migration[8.0]
  def change
    add_column :lotes, :quantidade, :integer, default: 0, null: false
  end
end

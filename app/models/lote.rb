class Lote < ApplicationRecord
  belongs_to :produto

  validates :numero_lote, presence: true, uniqueness: { scope: :produto_id }
  validates :data_validade, presence: true
  validates :data_fabricacao, presence: true
  validates :quantidade, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end

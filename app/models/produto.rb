class Produto < ApplicationRecord
  belongs_to :fabricante
  belongs_to :principio_ativo
  has_many :lotes, dependent: :destroy

  validates :nome, presence: true
  validates :codigo_de_barras, uniqueness: true, allow_blank: true
  validates :valor_compra, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :valor_venda, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :estoque_minimo, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true

  def quantidade_total
    lotes.sum(:quantidade)
  end
end

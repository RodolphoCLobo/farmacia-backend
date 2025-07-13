class ProdutoSerializer
  include JSONAPI::Serializer
  attributes :nome, :valor_compra, :valor_venda, :codigo_de_barras, :estoque_minimo

  belongs_to :fabricante
  belongs_to :principio_ativo
  has_many :lotes

  attribute :quantidade_total do |produto|
    produto.quantidade_total
  end
end

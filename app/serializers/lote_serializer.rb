class LoteSerializer
  include JSONAPI::Serializer
  attributes :numero_lote, :data_fabricacao, :data_validade

  belongs_to :produto
end

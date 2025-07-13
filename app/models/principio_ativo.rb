class PrincipioAtivo < ApplicationRecord
  has_many :produtos, dependent: :restrict_with_error

  validates :nome, presence: true, uniqueness: true
end

class Cliente < ApplicationRecord
  validates_presence_of :nome
  validates :cpf, length: { in: 11..11 }
  validates :cnh, length: { in: 11..11 }
end

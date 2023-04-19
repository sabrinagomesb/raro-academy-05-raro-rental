class Cliente < ApplicationRecord
  validates_presence_of :nome
  validates_presence_of :profile_url
  validates :cpf, length: { in: 11..11 }
  validates :cnh, length: { in: 11..11 }

  def self.ransackable_attributes(auth_object = nil)
    ["cnh", "cpf", "created_at", "id", "nome", "profile_url", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end

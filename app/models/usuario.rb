class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :nome
  validates_presence_of :foto

  def self.ransackable_attributes(auth_object = nil)
    ["nome", "email", "created_at", "id", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end

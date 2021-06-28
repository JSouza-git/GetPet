class Cliente < ApplicationRecord
    validates :nome, presence: true
    validates :telefone, presence: true, numericality: {only_integer: true}, uniqueness: true, length: {minimum: 11, maximum: 11}
    validates :endereco, presence: true    
    has_many :pets
end

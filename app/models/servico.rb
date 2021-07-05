class Servico < ApplicationRecord
    validates :nome, presence: true
    validates :duracao, presence: true
    validates :valor, presence: true,numericality: true    
    validates :duracao, presence: true,numericality: true,uniqueness: true,, length: {minimum: 1}
    
end

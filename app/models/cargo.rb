class Cargo < ApplicationRecord
    validates :nome, presence: true
    validates :descricao, presence: true    
    validates :permissao, presence: true
end

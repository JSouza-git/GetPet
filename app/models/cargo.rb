class Cargo < ApplicationRecord
    validates :nome, presence: true
    validates :permissao, presence: true
end

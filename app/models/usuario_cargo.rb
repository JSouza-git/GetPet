class UsuarioCargo < ApplicationRecord  
  validates :usuario, presence: true
  validates :cargo, presence: true
  belongs_to :usuario
  belongs_to :cargo
end

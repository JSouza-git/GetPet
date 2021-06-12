class UsuarioCargo < ApplicationRecord
  belongs_to :usuario
  belongs_to :cargo
end

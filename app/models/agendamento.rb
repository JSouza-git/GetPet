class Agendamento < ApplicationRecord
  belongs_to :pet
  belongs_to :servico
  belongs_to :usuario
end

class Agendamento < ApplicationRecord
  validates :pet, presence: true
  validates :servico, presence: true
  validates :usuario, presence: true
  validates :data, presence: true
  belongs_to :pet
  belongs_to :servico
  belongs_to :usuario
end

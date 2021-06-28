class Pet < ApplicationRecord
  validates :nome, presence: true
  validates :raca, presence: true
  validates :cor, presence: true
  validates :idade, presence: true, numericality: {only_integer: true}, uniqueness: true
  belongs_to :cliente
end

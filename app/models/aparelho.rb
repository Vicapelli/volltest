class Aparelho < ApplicationRecord
  validates :numero, presence: true
  validates :operadora, presence: true
end

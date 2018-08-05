class Herd < ApplicationRecord
  has_many :animals
  has_many :finances
  has_one :pasture
end

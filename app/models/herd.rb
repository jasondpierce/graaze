class Herd < ApplicationRecord
  has_many :animals
  has_one :herd
end

class Herd < ApplicationRecord
  belongs_to :user
  has_many :animals
  has_many :finances
  has_one :pasture
end

class Pasture < ApplicationRecord
  belongs_to :user
  has_one :herd
  has_many :animals, through: :herd
end

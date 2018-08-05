class Finance < ApplicationRecord
  has_one :herd
  has_many :animals, through: :herd
end

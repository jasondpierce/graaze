class Animal < ApplicationRecord
  has_one :herd
  has_many :users
end

class Animal < ApplicationRecord
  #belongs_to :user
  has_one :herd
end

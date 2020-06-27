class Car < ApplicationRecord
  has_one_attached :photo
  has_many :combustibles
end

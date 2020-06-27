class Combustible < ApplicationRecord
  belongs_to :car
  has_one_attached :photo
end

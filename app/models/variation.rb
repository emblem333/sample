class Variation < ApplicationRecord
  belongs_to :product
  has_one :Image
end

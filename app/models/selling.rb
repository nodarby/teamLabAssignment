class Selling < ApplicationRecord
  has_many :shops
  has_many :products
end

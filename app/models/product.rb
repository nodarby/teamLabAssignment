class Product < ApplicationRecord
  belongs_to :selling
  def to_param
    title
  end
  validates :title, length: {maximum: 100}
  validates :main, length: {maximum: 500}
  validates :price, numericality: :only_integer
end

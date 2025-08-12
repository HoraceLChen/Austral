class Shoe < ApplicationRecord
  has_many :page_shoes, dependent: :destroy
  has_many :pages, through: :page_shoes
  has_many :catalogs, through: :pages

  validates :name, presence: true
  validates :price, presence: true,
                    numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end

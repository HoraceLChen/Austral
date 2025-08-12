class Page < ApplicationRecord
  belongs_to :catalog

  has_many :page_shoes, dependent: :destroy
  has_many :shoes, through: :page_shoes

  validates :page_number, presence: true,
                          numericality: { only_integer: true, greater_than: 0 }
end

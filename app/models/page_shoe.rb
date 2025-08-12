class PageShoe < ApplicationRecord
  belongs_to :page
  belongs_to :shoe

  validates :page_id, uniqueness: { scope: :shoe_id }
end

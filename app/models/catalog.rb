class Catalog < ApplicationRecord
  has_many :pages, dependent: :destroy
  has_many :shoes, through: :pages
end

class Product < ApplicationRecord
	belongs_to :category
	scope :cat, ->(a) { (where("category_id = ?", a) ) if a.present? }
	has_many :line_items
	has_many :orders, through: :line_items
	has_many :reviews
end

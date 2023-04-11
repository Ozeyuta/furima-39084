class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :cost
  belongs_to_active_hash :shipping_origin
  belongs_to_active_hash :shipping_day

  validates :image, presence: true
  validates :item_name, presence: true
  validates :item_text, presence: true
  validates :category, presence: true
  validates :status, presence: true
  validates :cost, presence: true
  validates :shipping_origin, presence: true
  validates :shipping_day, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 }, format: { with: /\A[0-9]+\z/ }
end

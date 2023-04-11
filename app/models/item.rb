class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :cost
  belongs_to :shipping_origin
  belongs_to :shipping_day

  validates :image, presence: true
  validates :item_name, presence: true
  validates :item_text, presence: true
  validates :category_id, presence: true
  validates :category_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :status_id, presence: true
  validates :status_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :cost_id, presence: true
  validates :cost_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :shipping_origin_id, presence: true
  validates :shipping_origin_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :shipping_day_id, presence: true
  validates :shipping_day_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 }, format: { with: /\A[0-9]+\z/ }

  belongs_to :user
  has_one_attached :image
end

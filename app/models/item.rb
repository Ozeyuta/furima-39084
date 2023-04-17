class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :cost
  belongs_to :shipping_origin
  belongs_to :shipping_day

  with_options presence: true do
    validates :image, :item_name, :item_text,
    validates :category_id, numericality: { other_than: 1, message: "can't be blank"}
    validates :status_id, numericality: { other_than: 1, message: "can't be blank"}
    validates :cost_id, numericality: { other_than: 1, message: "can't be blank"}
    validates :shipping_origin_id, numericality: { other_than: 1, message: "can't be blank"}
    validates :shipping_day_id, numericality: { other_than: 1, message: "can't be blank"}
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
    validates :price, format: { with: /\A[0-9]+\z/ }
  end

  belongs_to :user
  has_one_attached :image
  has_one :order
end

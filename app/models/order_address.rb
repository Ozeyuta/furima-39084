class OrderAddress
  include ActiveModel::Model
  attr_accessor :item_id, :user_id, :post_code, :shipping_origin_id, :city, :house_number, :building_name, :phone_number, :token 

  with_options presence: true do
    validates :item_id, :user_id, :city, :house_number, :token
    validates :post_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }
    validates :shipping_origin_id, numericality: { other_than: 1 }
    validates :phone_number, format: { with: /\A\d{10,11}\z/ }
  end

  def save
    order = Order.create(item_id: item_id, user_id: user_id)
    Address.create(post_code: post_code, shipping_origin_id: shipping_origin_id, city: city, house_number: house_number, building_name: building_name, phone_number: phone_number, order_id: order.id)
  end
end
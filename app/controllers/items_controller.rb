class ItemsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def index
    # @items = Item.includes(:user)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :item_name, :item_text, :category_id, :status_id, :cost_id, :shipping_origin_id, :shipping_day_id, :price).merge(user_id: current_user.id)
  end
end

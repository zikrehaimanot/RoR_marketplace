class ItemController < ApplicationController
  def create
    @item = Item.new(params.require(:user).permit(:name, :price))
    # ...
  end

end

class StoreController < ApplicationController
  def index
  	@products = Product.all
  	@cart = current_cart
  end

  def podglad
  	@cart = current_cart
  	@id = params[:id] 
  end
end

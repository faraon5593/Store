class StoreController < ApplicationController
	layout "podglad", only: [:podglad]

  def index
  	@search = Product.search(params[:q])
    @products = @search.result
  	@cart = current_cart
  end

  def podglad
  	@cart = current_cart
  	@id = params[:id] 
  end
end

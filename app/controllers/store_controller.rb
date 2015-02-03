class StoreController < ApplicationController
	layout "podglad", only: [:podglad]

  #zwraca produkty spełniające kryteria wyszukiwania
  def index
  	@search = Product.search(params[:q])
    @products = @search.result
  	@cart = current_cart
  end

  #pogląd pojedynczego produktu
  def podglad
  	@cart = current_cart
  	@id = params[:id] 
  end
end

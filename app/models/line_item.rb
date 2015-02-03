class LineItem < ActiveRecord::Base
	belongs_to :order
	belongs_to :product
	belongs_to :cart

  #cena danego produktu * ilość
	def total_price 
		product.price * quantity
	end
end

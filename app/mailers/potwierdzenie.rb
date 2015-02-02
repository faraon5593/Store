class Potwierdzenie < ApplicationMailer
  default from: "store@interia.pl"
	def Potwierdzenie_klient(order,cena)
	    @order = order
	    @cena = cena
	    mail(to: @order.email,:subject => "Potwierdzenie")
 	end
end

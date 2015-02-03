class Potwierdzenie < ApplicationMailer
  default from: "store@interia.pl"

    #mail wysyłany po złożeniu zamówienia
	def Potwierdzenie_klient(order,cena)
	    @order = order
	    @cena = cena
	    mail(to: @order.email,:subject => "Potwierdzenie")
 	end
end

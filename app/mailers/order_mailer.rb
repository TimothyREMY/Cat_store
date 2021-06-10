class OrderMailer < ApplicationMailer
  default from: 'no-reply-thp-cat-alogue@yopmail.com'

  def order_email(order)
    
    @order = order
    @user = @order.user

    @selection = order.selections 

    mail(to: @user.email, subject: 'Merci pour votre commande') 

  end

end



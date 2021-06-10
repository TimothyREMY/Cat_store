class OrderMailer < ApplicationMailer
  default from: 'no-reply-thp-cat-alogue@yopmail.com'

  def order_email(order)
    
    
    @order = order
    @user = @order.user

    @selection = order.selections 
    
   

    
    # list_img = []
    # @order.selections.each do |item|
    #   list_img << item.image_url
    #   puts item.image_url
    # end
    
    # puts list_img

    mail(to: @user.email, subject: 'Merci pour votre commande') 

  end

end



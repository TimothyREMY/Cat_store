class AdminMailer < ApplicationMailer
    default from: 'no-reply-thp-cat-alogue@yopmail.com'

    def admin_email(order)
        #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
        
        @order = order
        @user = @order.user 
        @selection = order.selections 

        # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
        mail(to: "franc.dev.thp@gmail.com", subject: 'Une nouvelle commande a été passée !') 
    end
end

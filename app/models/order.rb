class Order < ApplicationRecord
    #after_save :order_send

    belongs_to :user
    has_many :selections
    has_many :items, through: :selections 

    # def order_send
    #     OrderMailer.order_email(self).deliver_now
    # end
    
end

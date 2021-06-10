class Order < ApplicationRecord
    #after_save :order_send

    belongs_to :user
    has_many :selections
    has_many :items, through: :selections 

    # def order_send
    #     OrderMailer.order_email(self).deliver_now
    # end
    
    def total_order
        @total_order = 0

        self.selections.each do |selection|
            @total_order = selection.item.price + @total_order
        end
        return @total_order
    end

end

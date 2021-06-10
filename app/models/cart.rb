class Cart < ApplicationRecord

    belongs_to :user
    has_many :selections
    has_many :items, through: :selections


    def total_cart
        @total_cart = 0

        self.selections.each do |selection|
            @total_cart = selection.item.price + @total_cart
        end
        return @total_cart
    end

end

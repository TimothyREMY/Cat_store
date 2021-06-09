class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  after_create :user_cart

  has_one :cart
  has_many :orders 

  def user_cart
    Cart.create(user_id: self.id)
    puts "Voici le panier numéro #{Cart.last.id}"
  end

end

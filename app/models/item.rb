class Item < ApplicationRecord
    
  has_many :selections 
  has_many :carts, through: :selections
  has_many :orders, through: :selections
  has_one_attached :image_url

  
  validates :title,
    presence: true, 
    length: { in: 5..140}
  
  validates :description,
    presence: true, 
    length: { in: 20..1000 }
  
  validates :price,
    presence: true,
    numericality: {greater_than: 0.00}

end

class Item < ApplicationRecord
    
  has_many :selection 

  validates :title,
    presence: true, 
    length: { in: 5..140}
  
  validates :description
    presence: true, 
    length: { in: 20..1000 }
  
  validates :price,
    presence: true,
    numericality: {greater_than: 0.00}
  
  validates :image_url, 
    presence: true,
    validates_format_of :image_url, :with => /\A(https?://)?([\da-z.-]+).([a-z.]{2,6})([/\w.-])/?\Z/i
    
end

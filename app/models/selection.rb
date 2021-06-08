class Selection < ApplicationRecord

  belongs_to :cart 
  belongs_to :item  
  belongs_to :order, optional: true 
  
end

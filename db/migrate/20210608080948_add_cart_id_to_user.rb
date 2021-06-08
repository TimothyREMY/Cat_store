class AddCartIdToUser < ActiveRecord::Migration[5.2]
  def change

    add_reference :user, :cart_id, foreign_key :true 
    
  end
end

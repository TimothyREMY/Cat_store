User.delete_all
Cart.delete_all
Order.delete_all
Selection.delete_all
Item.delete_all




7.times do |i|
  item = Item.create(title: ["Doudou", "Chouchou", "Poupou", "Loulou", "Minou", "Pikachu", "Patapon", "Grosminet", "Popeye", "Berlioz", "Billy", "Azraël", "Othello", "Toulouse", "O’Malley", "Figaro", "Oliver", "Felix", "Lucifer", "Olympe"].sample, description: Faker::Lorem.sentence(word_count: 20), price: rand(10..1000))
  
  item.image_url.attach(io: File.open("app/assets/images/pic_#{i}.jpg"), filename: "pic_#{i}.jpg")
  puts "Item number #{i} a été créé"

end


#item.picture.attach(io: File.open(app_assets_images_path), filename: 'pic_1.jpg', content_type: 'image/jpg')
#flat.images.attach(io: File.open(my_second_image_path), filename: 'image_name.png', content_type: 'image/png')
=begin
20.times do 
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, email: Faker::Internet.email, password: Faker::Internet.password)
  Order.create(user_id: User.all.sample.id)
  Cart.create(user_id: User.all.sample.id)
  Selection.create(item_id: Item.all.sample.id, cart_id: Cart.all.sample.id, order_id: Order.all.sample.id)
end
=end




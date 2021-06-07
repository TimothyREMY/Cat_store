#User.delete_all
#Cart.delete_all
#Order.delete_all
#Selection.delete_all
#Item.delete_all

20.times do |i|
  Item.create(title: ["Doudou", "Chouchou", "Poupou", "Loulou", "Minou", "Pikachu", "Patapon", "Grosminet", "Popeye", "Berlioz", "Billy", "Azraël", "Othello", "Toulouse", "O’Malley", "Figaro", "Oliver", "Felix", "Lucifer", "Olympe"].sample, description: Faker::Lorem.characters(number: 35), price: rand(10..1000), image_url: "https://images.pexels.com/photos/2173872/pexels-photo-2173872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
  puts "Item number #{i} a été créé"
end

=begin
20.times do 
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, email: Faker::Internet.email, password: Faker::Internet.password)
  Order.create(user_id: User.all.sample.id)
  Cart.create(user_id: User.all.sample.id)
  Selection.create(item_id: Item.all.sample.id, cart_id: Cart.all.sample.id, order_id: Order.all.sample.id)
end
=end
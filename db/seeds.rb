Booking.destroy_all
Pool.destroy_all
User.destroy_all


puts "running seeds"
nicolas = User.create!(email: 'Nicolas.Goarant@hotmail.fr', password: "secret", first_name: 'Nicolas', last_name: 'Goarant', profile_picture: 'https://avatars2.githubusercontent.com/u/49594434?s=460&v=4')
nathan = User.create!(email: 'nathan@gmail.com', password: "secret", first_name: 'Nathan', last_name: 'Menard', profile_picture: 'https://avatars0.githubusercontent.com/u/49595305?s=460&v=4')
maella = User.create!(email: 'maella@gmail.com', password: "secret", first_name: 'Maella', last_name: 'Degras', profile_picture: 'https://avatars2.githubusercontent.com/u/6984625?s=460&v=4')
simon = User.create!(email: 'simon@gmail.com', password: "secret", first_name: 'Simon', last_name: 'Le Fourn', profile_picture: 'https://avatars3.githubusercontent.com/u/48689293?s=460&v=4')
valentin = User.create!(email: 'valentin@gmail.com', password: "secret", first_name: 'Valentin', last_name: 'Cauwet', profile_picture: 'https://avatars0.githubusercontent.com/u/48213433?s=460&v=4')
maxime = User.create!(email: 'maxime@gmail.com', password: "secret", first_name: 'Maxime', last_name: 'Le Menaheze', profile_picture: 'https://avatars0.githubusercontent.com/u/49006065?s=460&v=4')
aristide = User.create!(email: 'aristide@gmail.com', password: "secret", first_name: 'Aristide', last_name: 'Riou', profile_picture: 'https://avatars0.githubusercontent.com/u/48838468?s=460&v=4')
cecile = User.create!(email: 'cecile@gmail.com', password: "secret", first_name: 'Cecile', last_name: 'Veneziani', profile_picture: 'https://avatars0.githubusercontent.com/u/50518?s=460&v=4')
pierre = User.create!(email: 'pierre@gmail.com', password: "secret", first_name: 'Pierre', last_name: '<Fa></Fa>cq', profile_picture: 'https://avatars0.githubusercontent.com/u/14109103?s=460&v=4')
guillaume = User.create!(email: 'guillaume@gmail.com', password: "secret", first_name: 'Guillaume', last_name: 'Cabanel', profile_picture: 'https://avatars1.githubusercontent.com/u/2414369?s=400&v=4')
nfilzi = User.create!(email: 'nicolas@gmail.com', password: "secret", first_name: 'Nicolas', last_name: 'Filzi', profile_picture: 'https://avatars0.githubusercontent.com/u/7533706?s=460&v=4')
spiderman = User.create!(email: 'spiderman@gmail.com', password: "secret", first_name: 'Spider', last_name: 'Man', profile_picture: 'https://avatarfiles.alphacoders.com/149/thumb-149117.jpg')
mike = User.create!(email: 'mike@gmail.com', password: "secret", first_name: 'Mike', last_name: 'Tyson', profile_picture: 'https://www.avatarys.com/downloadfullsize/send/10230')

description_lorem = "I have everything you need: BBQ, sun umbrella, buoys... Of course, you can bring as many friends as you'd like! So see you in my pool ;)"

nathan_pool = Pool.create!(user: nathan, city: "Nantes", address: '3 rue de Verdun, Nantes', capacity: 15, title: 'A pool for all your family', description: description_lorem, heated: false, picture: File.open(Rails.root.join('db/fixtures/pools/piscine1.jpg')), daily_price: 15)
nicolas_pool = Pool.create!(user: nicolas, city: "Paris", address: '55 rue du Faubourg Saint-Honoré, Paris', capacity: 10, title: 'A great pool close to the forest', description: description_lorem, heated: true, picture: File.open(Rails.root.join('db/fixtures/pools/pool.jpg')), daily_price: 20)
simon_pool = Pool.create!(user: simon, city: "Rennes", address: '1 rue de la gare, Rennes', capacity: 8, title: 'A nice and heated pool', description: description_lorem, heated: true, picture: File.open(Rails.root.join('db/fixtures/pools/pool4.jpg')), daily_price: 10)
valentin_pool = Pool.create!(user: valentin, city: "Paris", address: '2 rue Surcouf, Paris',capacity: 20, title: 'A pool close to the town', description: description_lorem, heated: true, picture: File.open(Rails.root.join('db/fixtures/pools/piscine3.jpg')), daily_price: 25)
maxime_pool = Pool.create!(user: maxime, city: "Brest", address: '1 rue Aristide Briand, Brest', capacity: 17, title: 'Welcome to my awesome pool', description: description_lorem, heated: false, picture: File.open(Rails.root.join('db/fixtures/pools/piscine4.jpg')), daily_price: 17)
aristide_pool = Pool.create!(user: aristide, city: "Paris", address: '5 rue des Pyrénées, Paris', capacity: 20, title: 'In Paris, come enjoy my pool', description: description_lorem, heated: true, picture: File.open(Rails.root.join('db/fixtures/pools/pool2.jpg')), daily_price: 12)
spiderman_pool = Pool.create!(user: spiderman, city: "Paris", address: '3 rue abel gance, Paris', capacity: 15, title: 'Nice pool close to Place Italy', description: description_lorem, heated: false, picture: File.open(Rails.root.join('db/fixtures/pools/pool7.jpg')), daily_price: 18)
cecile_pool = Pool.create!(user: cecile, city: "Rennes", address: '1 Boulevard de la Duchesse Anne, Rennes', capacity: 10, title: 'Closed to Rennes, a great pool', description: description_lorem, heated: false, picture: File.open(Rails.root.join('db/fixtures/pools/piscine6.jpg')), daily_price: 30)
pierre_pool = Pool.create!(user: pierre, city: "Paris", address: '1 place gambetta, Paris', capacity: 5, title: 'A nice pool, near the city', description: description_lorem, heated: true, picture: File.open(Rails.root.join('db/fixtures/pools/piscine7.jpg')), daily_price: 18)
guillaume_pool = Pool.create!(user: guillaume, city: "Rennes", address: '23 boulevard Charles Péguy, Rennes', capacity: 11, title: 'Have a nice day, with a nice pool', description: description_lorem, heated: false, picture: File.open(Rails.root.join('db/fixtures/pools/pool3.jpg')), daily_price: 21)
nfilzi_pool = Pool.create!(user: nfilzi, city: "Nantes", address: '180 rue Général Buat, Nantes', capacity: 20, title: 'Awesome pool well located in Nantes', description: description_lorem, heated: false, picture: File.open(Rails.root.join('db/fixtures/pools/pool5.jpg')), daily_price: 21)
mike_pool = Pool.create!(user: mike, city: "Paris", address: '2 Rue Botzaris, Paris', capacity: 12, title: 'Nice pool. (you better pay)', description: description_lorem, heated: true, picture: File.open(Rails.root.join('db/fixtures/pools/pool6.jpg')), daily_price: 21)

starting_date_booking1 = DateTime.now + 3
ending_date_booking1 = DateTime.now + 4
duration_booking1 = (ending_date_booking1 - starting_date_booking1).to_i

starting_date_booking2 = DateTime.now + 3
ending_date_booking2 = DateTime.now + 5
duration_booking2 = (ending_date_booking2 - starting_date_booking2).to_i

# total_price_booking = (:ending_date - :starting_date).to_i


# booking1 = Booking.create!(user: nicolas, pool: nathan_pool, starting_date: starting_date_booking1, ending_date: ending_date_booking1, total_price: total_price_booking1)
# booking2 = Booking.create!(user: nathan, pool: maella_pool, starting_date: starting_date_booking2, ending_date: ending_date_booking2, total_price: total_price_booking2)

booking3 = Booking.create!(user: nathan, pool: simon_pool, starting_date: Date.new(2019,6,20), ending_date: Date.new(2019,6,21), booking_status: 'pending')
booking4 = Booking.create!(user: maella, pool: valentin_pool, starting_date: Date.new(2019,3,1), ending_date: Date.new(2019,3,2), booking_status: 'accepted')

booking5 = Booking.create!(user: maella, pool: aristide_pool, starting_date: Date.new(2019,1,1), ending_date: Date.new(2019,1,2), booking_status: 'declined')
booking6 = Booking.create!(user: maella, pool: pierre_pool, starting_date: Date.new(2019,2,11), ending_date: Date.new(2019,2,13), booking_status: 'accepted')

booking7 = Booking.create!(user: simon, pool: guillaume_pool, starting_date: Date.new(2019,6,29), ending_date: Date.new(2019,6,30), booking_status: 'accepted')
booking8 = Booking.create!(user: maxime, pool: nathan_pool, starting_date: Date.new(2019,5,20), ending_date: Date.new(2019,6,22), booking_status: 'accepted')
puts "seeds ok"

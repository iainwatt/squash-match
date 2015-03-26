

# 80.times do |n|
#   name= Faker::Name.name
#   latitude= Faker::Address.latitude
#   longitude= Faker::Address.longitude

#   Centre.create!(
#     name: name,
#     latitude: latitude,
#     longitude: longitude,
#   )

# end


s1 = Centre.create(name:"Britannia Leisure Centre", location:"40 Hyde Road, London, N1 5JU", latitude: 51.535300, longitude: -0.083625 )
s2 = Centre.create(name:"Clissold Leisure Centre", location:"63 Clissold Road, N16 9EX", latitude: 51.559128, longitude: -0.085597 )
s3 = Centre.create(name:"Kings Hall Leisure Center", location:"39 Lower Clapton Road, Hackney, London, E5 0NU", latitude: 51.550810, longitude:-0.052337  )
s4 = Centre.create(name:"Finsbury Leisure Center", location:"Norman Street, London, EC1V 3PU", latitude: 51.526212, longitude: -0.095253 )
s5 = Centre.create(name:"Pancras Square Leisure", location:"5 Pancras Square, London, N1C 4AG", latitude:51.533791, longitude: -0.126488 )
s6 = Centre.create(name:"St George's Leisure Center", location:"221 The Highway, London, E1W 3BP", latitude: 51.509789, longitude: -0.058305  )
s7 = Centre.create(name:"Mile End Park Leisure Center", location:"190 Burdett Road, Mile End, E3 4HL", latitude: 51.518666, longitude: -0.030467  )
s8 = Centre.create(name:"John Orwell Sports Center", location:"Tench Street, Wapping, London, E1W 2QD", latitude: 51.505178, longitude: -0.061426 )
s9 = Centre.create(name:"Tiller Leisure Center", location:"Tiller Road, Docklands, London, E14 8PX", latitude: 51.496332, longitude: -0.024740  )
s10 = Centre.create(name:"Whitechapel Sports Center", location:"55 Durward Street, Whitechapel, London, E1 5BA", latitude: 51.519832, longitude: -0.061346)
s11 = Centre.create(name:"York Hall Sports Center", location:"5 Old Ford Road, Bethnal Green, London, E2 9PJ", latitude: 51.529878, longitude: -0.053929 )
s12 = Centre.create(name:"Oasis Leisure Center", location:"32, Endell Street, Covent Garden, London WC2H 9AG", latitude: 51.515660, longitude: -0.125901 )
s13 = Centre.create(name:"Bloombsbury Fitness", location:"15 Gordon Street, London, WC1H 0AY", latitude: 51.525405, longitude: -0.132745 )
s14 = Centre.create(name:"Hammersmith Fitness & Squash Center", location:"Chalk Hill Road, Hammersmith, London, W6 8DW", latitude: 51.492056, longitude: -0.220086 )
s15 = Centre.create(name:"Lillie Road Fintess Center", location:"Lillie Road, Fulham, London, SW6 7PD", latitude: 51.483300, longitude: -0.216421 )
s16 = Centre.create(name:"Phoenex Fintness Center", location:"Bloemfontein Road, Shepherds Bush, London, W12 7DB", latitude: 51.512859, longitude: -0.235151 )
s17 = Centre.create(name:"The Colombo Center", location:"36-68 Colombo Street, Southwark, London, SE1 8DP", latitude: 51.506052, longitude: -0.104808 )
s18 = Centre.create(name:"Black Prince Communtiy Hub", location:"Black Prince Community Hub, 5 Beaufoy Walk, Off Black Prince Road, Kennington, London, SE11 6HU", latitude: 51.491324, longitude: -0.116211 )
s19 = Centre.create(name:"Kennington Park Sports Center", location:"Kennington Park, Kennington Park Road, Kennington, London, SE11 4BE", latitude:51.485784, longitude:-0.107729 )
s20 = Centre.create(name:"Flaxman Sports Center", location:"Carew Street, London, SE5 9DF", latitude: 51.471447, longitude: -0.100460 )
s21 = Centre.create(name:"Ferndale Sports Center", location:"Nursery Road, London, SW9 8BP", latitude: 51.463146, longitude: -0.116874 )

c1 = Court.create(centre_id:1, time:"18.00-18.45", start_time:'2015-03-24 18:00:00 +0000', end_time:'2015-03-24 18:45:00 +0000', court_no:1, availability: "booked")
c2 = Court.create(centre_id:1, time:"18.00-18.45", start_time:'2015-03-24 18:00:00 +0000', end_time:'2015-03-24 18:45:00 +0000', court_no:2, availability: "booked")
c3 = Court.create(centre_id:1, time:"18.00-18.45", start_time:'2015-03-24 18:00:00 +0000', end_time:'2015-03-24 18:45:00 +0000', court_no:3, availability: "free")

c4 = Court.create(centre_id:1, time:"18.45-19.30", start_time:'2015-03-24 18:45:00 +0000', end_time:'2015-03-24 19:30:00 +0000', court_no:1, availability: "free")
c5 = Court.create(centre_id:1, time:"18.45-19.30", start_time:'2015-03-24 18:45:00 +0000', end_time:'2015-03-24 19:30:00 +0000', court_no:2, availability: "booked")
c6 = Court.create(centre_id:1, time:"18.45-19.30", start_time:'2015-03-24 18:45:00 +0000', end_time:'2015-03-24 19:30:00 +0000', court_no:3, availability: "booked")

c7 = Court.create(centre_id:1, time:"19.30-20.15", start_time:'2015-03-24 19:30:00 +0000', end_time:'2015-03-24 20:15:00 +0000', court_no:1, availability: "free")
c8 = Court.create(centre_id:1, time:"19.30-20.15", start_time:'2015-03-24 19:30:00 +0000', end_time:'2015-03-24 20:15:00 +0000', court_no:2, availability: "booked")
c9 = Court.create(centre_id:1, time:"19.30-20.15", start_time:'2015-03-24 19:30:00 +0000', end_time:'2015-03-24 20:15:00 +0000', court_no:3, availability: "free")

c10 = Court.create(centre_id:1, time:"20.15-21.00", start_time:'2015-03-24 20:15:00 +0000', end_time:'2015-03-24 21:00:00 +0000', court_no:1, availability: "booked")
c11 = Court.create(centre_id:1, time:"20.15-21.00", start_time:'2015-03-24 20:15:00 +0000', end_time:'2015-03-24 21:00:00 +0000', court_no:2, availability: "free")
c12 = Court.create(centre_id:1, time:"20.15-21.00", start_time:'2015-03-24 20:15:00 +0000', end_time:'2015-03-24 21:00:00 +0000', court_no:3, availability: "free")

c13 = Court.create(centre_id:1, time:"21.00-21.45", start_time:'2015-03-24 21:00:00 +0000', end_time:'2015-03-24 21:45:00 +0000', court_no:1, availability: "booked")
c14 = Court.create(centre_id:1, time:"21.00-21.45", start_time:'2015-03-24 21:00:00 +0000', end_time:'2015-03-24 21:45:00 +0000', court_no:2, availability: "free")
c15 = Court.create(centre_id:1, time:"21.00-21.45", start_time:'2015-03-24 21:00:00 +0000', end_time:'2015-03-24 21:45:00 +0000', court_no:3, availability: "free")

c16 = Court.create(centre_id:2, time:"18.00-18.45", start_time:'2015-03-24 18:00:00 +0000', end_time:'2015-03-24 18:45:00 +0000', court_no:1, availability: "free")
c17 = Court.create(centre_id:2, time:"18.00-18.45", start_time:'2015-03-24 18:00:00 +0000', end_time:'2015-03-24 18:45:00 +0000', court_no:2, availability: "booked")
c18 = Court.create(centre_id:2, time:"18.00-18.45", start_time:'2015-03-24 18:00:00 +0000', end_time:'2015-03-24 18:45:00 +0000', court_no:3, availability: "free")

c19 = Court.create(centre_id:2, time:"18.45-19.30", start_time:'2015-03-24 18:45:00 +0000', end_time:'2015-03-24 19:30:00 +0000', court_no:1, availability: "free")
c20 = Court.create(centre_id:2, time:"18.45-19.30", start_time:'2015-03-24 18:45:00 +0000', end_time:'2015-03-24 19:30:00 +0000', court_no:2, availability: "booked")
c21 = Court.create(centre_id:2, time:"18.45-19.30", start_time:'2015-03-24 18:45:00 +0000', end_time:'2015-03-24 19:30:00 +0000', court_no:3, availability: "free")

c22 = Court.create(centre_id:2, time:"19.30-20.15", start_time:'2015-03-24 19:30:00 +0000', end_time:'2015-03-24 20:15:00 +0000', court_no:1, availability: "booked")
c23 = Court.create(centre_id:2, time:"19.30-20.15", start_time:'2015-03-24 19:30:00 +0000', end_time:'2015-03-24 20:15:00 +0000', court_no:2, availability: "booked")
c24 = Court.create(centre_id:2, time:"19.30-20.15", start_time:'2015-03-24 19:30:00 +0000', end_time:'2015-03-24 20:15:00 +0000', court_no:3, availability: "free")

c25 = Court.create(centre_id:2, time:"20.15-21.00", start_time:'2015-03-24 20:15:00 +0000', end_time:'2015-03-24 21:00:00 +0000', court_no:1, availability: "booked")
c26 = Court.create(centre_id:2, time:"20.15-21.00", start_time:'2015-03-24 20:15:00 +0000', end_time:'2015-03-24 21:00:00 +0000', court_no:2, availability: "free")
c27 = Court.create(centre_id:2, time:"20.15-21.00", start_time:'2015-03-24 20:15:00 +0000', end_time:'2015-03-24 21:00:00 +0000', court_no:3, availability: "booked")

c28 = Court.create(centre_id:2, time:"21.00-21.45", start_time:'2015-03-24 21:00:00 +0000', end_time:'2015-03-24 21:45:00 +0000',  court_no:1, availability: "booked")
c29 = Court.create(centre_id:2, time:"21.00-21.45", start_time:'2015-03-24 21:00:00 +0000', end_time:'2015-03-24 21:45:00 +0000',  court_no:2, availability: "free")
c30 = Court.create(centre_id:2, time:"21.00-21.45", start_time:'2015-03-24 21:00:00 +0000', end_time:'2015-03-24 21:45:00 +0000',  court_no:3, availability: "booked")

c31 = Court.create(centre_id:3, time:"18.00-18.45", start_time:'2015-03-24 18:00:00 +0000', end_time:'2015-03-24 18:45:00 +0000', court_no:1, availability: "free")
c32 = Court.create(centre_id:3, time:"18.00-18.45", start_time:'2015-03-24 18:00:00 +0000', end_time:'2015-03-24 18:45:00 +0000', court_no:2, availability: "booked")
c33 = Court.create(centre_id:3, time:"18.00-18.45", start_time:'2015-03-24 18:00:00 +0000', end_time:'2015-03-24 18:45:00 +0000', court_no:3, availability: "free")

c34 = Court.create(centre_id:3, time:"18.45-19.30", start_time:'2015-03-24 18:45:00 +0000', end_time:'2015-03-24 19:30:00 +0000', court_no:1, availability: "free")
c35 = Court.create(centre_id:3, time:"18.45-19.30", start_time:'2015-03-24 18:45:00 +0000', end_time:'2015-03-24 19:30:00 +0000', court_no:2, availability: "booked")
c36 = Court.create(centre_id:3, time:"18.45-19.30", start_time:'2015-03-24 18:45:00 +0000', end_time:'2015-03-24 19:30:00 +0000', court_no:3, availability: "free")

c37 = Court.create(centre_id:3, time:"19.30-20.15", start_time:'2015-03-24 19:30:00 +0000', end_time:'2015-03-24 20:15:00 +0000', court_no:1, availability: "free")
c38 = Court.create(centre_id:3, time:"19.30-20.15", start_time:'2015-03-24 19:30:00 +0000', end_time:'2015-03-24 20:15:00 +0000', court_no:2, availability: "booked")
c39 = Court.create(centre_id:3, time:"19.30-20.15", start_time:'2015-03-24 19:30:00 +0000', end_time:'2015-03-24 20:15:00 +0000', court_no:3, availability: "booked")

c40 = Court.create(centre_id:3, time:"20.15-21.00", start_time:'2015-03-24 20:15:00 +0000', end_time:'2015-03-24 21:00:00 +0000', court_no:1, availability: "booked")
c41 = Court.create(centre_id:3, time:"20.15-21.00", start_time:'2015-03-24 20:15:00 +0000', end_time:'2015-03-24 21:00:00 +0000', court_no:2, availability: "free")
c42 = Court.create(centre_id:3, time:"20.15-21.00", start_time:'2015-03-24 20:15:00 +0000', end_time:'2015-03-24 21:00:00 +0000', court_no:3, availability: "free")

c43 = Court.create(centre_id:3, time:"21.00-21.45", start_time:'2015-03-24 21:00:00 +0000', end_time:'2015-03-24 21:45:00 +0000',  court_no:1, availability: "booked")
c44 = Court.create(centre_id:3, time:"21.00-21.45", start_time:'2015-03-24 21:00:00 +0000', end_time:'2015-03-24 21:45:00 +0000',  court_no:2, availability: "free")
c45 = Court.create(centre_id:3, time:"21.00-21.45", start_time:'2015-03-24 21:00:00 +0000', end_time:'2015-03-24 21:45:00 +0000',  court_no:3, availability: "free")

    





puts 'seeded'
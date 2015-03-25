

# 20.times do |n|
#   name= Faker::Name.name
#   latitude= Faker::Address.latitude
#   longitude= Faker::Address.longitude

#   Centre.create!(
#     name: name,
#     latitude: latitude,
#     longitude: longitude,
#   )

# end


s1 = Centre.create(name:"Britannia Leisure Centre", location:"40 Hyde Road, London, N1 5JU" )
s2 = Centre.create(name:"Clissold Leisure Centre", location:"63 Clissold Road, N16 9EX" )
s3 = Centre.create(name:"Kings Hall Leisure Center", location:"39 Lower Clapton Road, Hackney, London, E5 0NU" )
s4 = Centre.create(name:"Finsbury Leisure Center", location:"Norman Street, London, EC1V 3PU" )
s5 = Centre.create(name:"Pancras Square Leisure", location:"5 Pancras Square, London, N1C 4AG" )
s6 = Centre.create(name:"St George's Leisure Center", location:"221 The Highway, London, E1W 3BP" )
s7 = Centre.create(name:"Mile End Park Leisure Center", location:"190 Burdett Road, Mile End, E3 4HL" )
s8 = Centre.create(name:"John Orwell Sports Center", location:"Tench Street, Wapping, London, E1W 2QD" )
s9 = Centre.create(name:"Tiller Leisure Center", location:"Tiller Road, Docklands, London, E14 8PX" )
s10 = Centre.create(name:"Whitechapel Sports Center", location:"55 Durward Street, Whitechapel, London, E1 5BA" )
s11 = Centre.create(name:"York Hall Sports Center", location:"5 Old Ford Road, Bethnal Green, London, E2 9PJ" )
s12 = Centre.create(name:"Oasis Leisure Center", location:"32, Endell Street, Covent Garden, London WC2H 9AG" )
s13 = Centre.create(name:"Bloombsbury Fitness", location:"15 Gordon Street, London, WC1H 0AY" )
s14 = Centre.create(name:"Hammersmith Fitness & Squash Center", location:"Chalk Hill Road, Hammersmith, London, W6 8DW" )
s15 = Centre.create(name:"Lillie Road Fintess Center", location:"Lillie Road, Fulham, London, SW6 7PD" )
s16 = Centre.create(name:"Phoenex Fintness Center", location:"Bloemfontein Road, Shepherds Bush, London, W12 7DB" )
s17 = Centre.create(name:"The Colombo Center", location:"36-68 Colombo Street, Southwark, London, SE1 8DP" )
s18 = Centre.create(name:"Black Prince Communtiy Hub", location:"Black Prince Community Hub, 5 Beaufoy Walk, Off Black Prince Road, Kennington, London, SE11 6HU" )
s19 = Centre.create(name:"Kennington Park Sports Center", location:"Kennington Park, Kennington Park Road, Kennington, London, SE11 4BE" )
s20 = Centre.create(name:"Flaxman Sports Center", location:"Carew Street, London, SE5 9DF" )
s21 = Centre.create(name:"Ferndale Sports Center", location:"Nursery Road, London, SW9 8BP" )

c1 = Court.create(centre_id:1, time:"18.00-18.45", start_time:'2015-03-24 18:00:00 +0000', end_time:'2015-03-24 18:45:00 +0000', court_no:1, availability: "booked")
c2 = Court.create(centre_id:1, time:"18.00-18.45", court_no:2, availability: "booked")
c3 = Court.create(centre_id:1, time:"18.00-18.45", court_no:3, availability: "free")

c4 = Court.create(centre_id:1, time:"18.45-19.30", court_no:1, availability: "free")
c5 = Court.create(centre_id:1, time:"18.45-19.30", court_no:2, availability: "booked")
c6 = Court.create(centre_id:1, time:"18.45-19.30", court_no:3, availability: "booked")

c7 = Court.create(centre_id:1, time:"19.30-20.15", court_no:1, availability: "free")
c8 = Court.create(centre_id:1, time:"19.30-20.15", court_no:2, availability: "booked")
c9 = Court.create(centre_id:1, time:"19.30-20.15", court_no:3, availability: "free")

c10 = Court.create(centre_id:1, time:"20.15-21.00", court_no:1, availability: "booked")
c11 = Court.create(centre_id:1, time:"20.15-21.00", court_no:2, availability: "free")
c12 = Court.create(centre_id:1, time:"20.15-21.00", court_no:3, availability: "free")

c13 = Court.create(centre_id:1, time:"21.00-21.45", court_no:1, availability: "booked")
c14 = Court.create(centre_id:1, time:"21.00-21.45", court_no:2, availability: "free")
c15 = Court.create(centre_id:1, time:"21.00-21.45", court_no:3, availability: "free")

c16 = Court.create(centre_id:2, time:"18.00-18.45", court_no:1, availability: "free")
c17 = Court.create(centre_id:2, time:"18.00-18.45", court_no:2, availability: "booked")
c18 = Court.create(centre_id:2, time:"18.00-18.45", court_no:3, availability: "free")

c19 = Court.create(centre_id:2, time:"18.45-19.30", court_no:1, availability: "free")
c20 = Court.create(centre_id:2, time:"18.45-19.30", court_no:2, availability: "booked")
c21 = Court.create(centre_id:2, time:"18.45-19.30", court_no:3, availability: "free")

c22 = Court.create(centre_id:2, time:"19.30-20.15", court_no:1, availability: "booked")
c23 = Court.create(centre_id:2, time:"19.30-20.15", court_no:2, availability: "booked")
c24 = Court.create(centre_id:2, time:"19.30-20.15", court_no:3, availability: "free")

c25 = Court.create(centre_id:2, time:"20.15-21.00", court_no:1, availability: "booked")
c26 = Court.create(centre_id:2, time:"20.15-21.00", court_no:2, availability: "free")
c27 = Court.create(centre_id:2, time:"20.15-21.00", court_no:3, availability: "booked")

c28 = Court.create(centre_id:2, time:"21.00-21.45", court_no:1, availability: "booked")
c29 = Court.create(centre_id:2, time:"21.00-21.45", court_no:2, availability: "free")
c30 = Court.create(centre_id:2, time:"21.00-21.45", court_no:3, availability: "booked")

c31 = Court.create(centre_id:3, time:"18.00-18.45", court_no:1, availability: "free")
c32 = Court.create(centre_id:3, time:"18.00-18.45", court_no:2, availability: "booked")
c33 = Court.create(centre_id:3, time:"18.00-18.45", court_no:3, availability: "free")

c34 = Court.create(centre_id:3, time:"18.45-19.30", court_no:1, availability: "free")
c35 = Court.create(centre_id:3, time:"18.45-19.30", court_no:2, availability: "booked")
c36 = Court.create(centre_id:3, time:"18.45-19.30", court_no:3, availability: "free")

c37 = Court.create(centre_id:3, time:"19.30-20.15", court_no:1, availability: "free")
c38 = Court.create(centre_id:3, time:"19.30-20.15", court_no:2, availability: "booked")
c39 = Court.create(centre_id:3, time:"19.30-20.15", court_no:3, availability: "booked")

c40 = Court.create(centre_id:3, time:"20.15-21.00", court_no:1, availability: "booked")
c41 = Court.create(centre_id:3, time:"20.15-21.00", court_no:2, availability: "free")
c42 = Court.create(centre_id:3, time:"20.15-21.00", court_no:3, availability: "free")

c43 = Court.create(centre_id:3, time:"21.00-21.45", court_no:1, availability: "booked")
c44 = Court.create(centre_id:3, time:"21.00-21.45", court_no:2, availability: "free")
c45 = Court.create(centre_id:3, time:"21.00-21.45", court_no:3, availability: "free")

    





puts 'seeded'
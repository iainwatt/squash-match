

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

u1 = User.create(
  first_name: "Jack",
  last_name: "Bush",
  profile_name: "bushyjack",
  email:"jack@email.com",
  password: "password",
  password_confirmation: "password",
  level: "6",
  matches_played: 100,
  wins: 32,
  losses: 39,
  elo: 2800,
  tagline: "you cant be serious",
  )
u1.save

u2 = User.create(
  first_name: "Iain",
  last_name: "Watt",
  profile_name: "iainwatt",
  email:"iain@email.com",
  password: "password",
  password_confirmation: "password",
  level: "4",
  matches_played: 100,
  wins: 32,
  losses: 79,
  elo: 2400,
  tagline: "I thought it was out....",
  )
u2.save

u3 = User.create(
  first_name: "Oli",
  last_name: "Cairns",
  profile_name: "optimusprime",
  email:"oli@email.com",
  password: "password",
  password_confirmation: "password",
  level: "8",
  matches_played: 200,
  wins: 132,
  losses: 39,
  elo: 1345,
  tagline: "The most decorated captain in the black berets",
  )
u3.save

u4 = User.create(
  first_name: "Alex",
  last_name: "Karim",
  profile_name: "KarimTime",
  email:"alex@email.com",
  password: "password",
  password_confirmation: "password",
  level: "9",
  matches_played: 400,
  wins: 302,
  losses: 349,
  elo: 1576,
  tagline: "Run fast or be last",
  )
u4.save

u5 = User.create(
  first_name: "Matt",
  last_name: "Hawley",
  profile_name: "MattHawley",
  email:"matt@email.com",
  password: "password",
  password_confirmation: "password",
  level: "10",
  matches_played: 600,
  wins: 421,
  losses: 39,
  elo: 1987,
  tagline: "Some call them opponents, I call them victims.",
  )
u5.save

u6 = User.create(
  first_name: "Mary",
  last_name: "Weiz",
  profile_name: "WeizMary",
  email:"mary@email.com",
  password: "password",
  password_confirmation: "password",
  level: "3",
  matches_played: 700,
  wins: 292,
  losses: 39,
  elo: 1528,
  tagline: "I eat lightning and crap thunder",
  )
u6.save

u7 = User.create(
  first_name: "Paul",
  last_name: "Recende",
  profile_name: "Recend_Winner",
  email:"paul@email.com",
  password: "password",
  password_confirmation: "password",
  level: "3",
  matches_played: 300,
  wins: 32,
  losses: 99,
  elo: 2238,
  tagline: "Losers complain…champions train",
  )
u7.save

u8 = User.create(
  first_name: "James",
  last_name: "Bennet",
  profile_name: "BigJBennet",
  email:"james@email.com",
  password: "password",
  password_confirmation: "password",
  level: "5",
  matches_played: 300,
  wins: 62,
  losses: 39,
  elo: 2222,
  tagline: "My warm up is your work out.",
  )
u8.save

ch1 = Challenge.create(player1_id:1, centre_id:1,court_id:1, status: 'pending')    
ch2 = Challenge.create(player1_id:1, centre_id:1,court_id:2, status: 'pending')    
ch3 = Challenge.create(player1_id:2, centre_id:2,court_id:22, status: 'pending')    
ch4 = Challenge.create(player1_id:2, centre_id:3,court_id:31, status: 'pending')    
ch5 = Challenge.create(player1_id:3, centre_id:3,court_id:32, status: 'pending')    
ch6 = Challenge.create(player1_id:3, centre_id:3,court_id:33, status: 'pending') 
ch7 = Challenge.create(player1_id:4, centre_id:3,court_id:34, status: 'pending')    
ch8 = Challenge.create(player1_id:4, centre_id:2,court_id:19, status: 'pending')    
ch9 = Challenge.create(player1_id:5, centre_id:2,court_id:20, status: 'pending')    
ch10 = Challenge.create(player1_id:5, centre_id:1,court_id:3, status: 'pending')    
ch11 = Challenge.create(player1_id:6, centre_id:1,court_id:4, status: 'pending') 
ch12 = Challenge.create(player1_id:6, centre_id:1,court_id:5, status: 'pending')    
ch13 = Challenge.create(player1_id:7, centre_id:1,court_id:6, status: 'pending')    
ch14 = Challenge.create(player1_id:7, centre_id:1,court_id:7, status: 'pending')    
ch15 = Challenge.create(player1_id:8, centre_id:1,court_id:8, status: 'pending')    
ch16 = Challenge.create(player1_id:8, centre_id:1,court_id:9, status: 'pending') 


 
# ch17 = Challenge.create(player1_id:8, centre_id:1,court_id:10, status: 'pending')    
# ch18 = Challenge.create(player1_id:6, centre_id:1,court_id:11, status: 'pending')    
# ch19 = Challenge.create(player1_id:5, centre_id:1,court_id:12, status: 'pending')    
# ch20 = Challenge.create(player1_id:4, centre_id:1,court_id:13, status: 'pending') 







puts 'seeded'


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
  sex: "male",
  age: 24,
  profile_name: "bushyjack",
  email:"jack@email.com",
  password: "password",
  password_confirmation: "password",
  level: "6",
  matches_played: 100,
  wins: 32,
  losses: 39,
  elo: 2800,
  form: "WLWW"
  tagline: "you cant be serious",
  )
u1.save

u2 = User.create(
  first_name: "Iain",
  last_name: "Watt",
  sex: "male",
  age: 32,
  profile_name: "iainwatt",
  email:"iain@email.com",
  password: "password",
  password_confirmation: "password",
  level: "4",
  matches_played: 100,
  wins: 32,
  losses: 79,
  elo: 2400,
  form: "LLWW"
  tagline: "I thought it was out....",
  )
u2.save

u3 = User.create(
  first_name: "Oli",
  last_name: "Cairns",
  sex: "male",
  age: 21,
  profile_name: "optimusprime",
  email:"oli@email.com",
  password: "password",
  password_confirmation: "password",
  level: "8",
  matches_played: 200,
  wins: 132,
  losses: 39,
  elo: 1345,
  form: "WLWWW"
  tagline: "The most decorated captain in the black berets",
  )
u3.save

u4 = User.create(
  first_name: "Alex",
  last_name: "Karim",
  sex: "male",
  age: 27,
  profile_name: "KarimTime",
  email:"alex@email.com",
  password: "password",
  password_confirmation: "password",
  level: "9",
  matches_played: 400,
  wins: 302,
  losses: 349,
  elo: 1576,
  form: "WLWWL"
  tagline: "Run fast or be last",
  )
u4.save

u5 = User.create(
  first_name: "Matt",
  last_name: "Hawley",
  sex: "male",
  age: 29,
  profile_name: "MattHawley",
  email:"matt@email.com",
  password: "password",
  password_confirmation: "password",
  level: "10",
  matches_played: 600,
  wins: 421,
  losses: 39,
  elo: 1987,
  form: "WLWLL"
  tagline: "Some call them opponents, I call them victims.",
  )
u5.save

u6 = User.create(
  first_name: "Mary",
  last_name: "Weiz",
  sex: "female",
  age: 36,
  profile_name: "WeizMary",
  email:"mary@email.com",
  password: "password",
  password_confirmation: "password",
  level: "3",
  matches_played: 700,
  wins: 292,
  losses: 39,
  elo: 1528,
  form: "WLWWL"
  tagline: "I eat lightning and crap thunder",
  )
u6.save

u7 = User.create(
  first_name: "Paul",
  last_name: "Recende",
  sex: "male",
  age: 35,
  profile_name: "Recend_Winner",
  email:"paul@email.com",
  password: "password",
  password_confirmation: "password",
  level: "3",
  matches_played: 300,
  wins: 32,
  losses: 99,
  elo: 2238,
  form: "WLLLWL"
  tagline: "Losers complain…champions train",
  )
u7.save

u8 = User.create(
  first_name: "James",
  last_name: "Bennet",
  sex: "male",
  age: 30,
  profile_name: "BigJBennet",
  email:"james@email.com",
  password: "password",
  password_confirmation: "password",
  level: "5",
  matches_played: 300,
  wins: 62,
  losses: 39,
  elo: 2222,
  form: "WLLWL"
  tagline: "My warm up is your work out.",
  )
u8.save

u9 = User.create(
  first_name: "Jono",
  last_name: "Harper",
  sex: "male",
  age: 33,
  profile_name: "jono_h",
  email:"jono@email.com",
  password: "password",
  password_confirmation: "password",
  level: "5",
  matches_played: 31,
  wins: 19,
  losses: 12,
  elo: 1345,
  form: "WLLWw",
  )

u10 = User.create(
  first_name: "Jo",
  last_name: "Candy",
  sex: "female",
  age: 31,
  profile_name: "jocando",
  email:"jocan@email.com",
  password: "password",
  password_confirmation: "password",
  level: "5",
  matches_played: 41,
  wins: 20,
  losses: 21,
  elo: 1345,
  form: "WLLWw",
  )

u11 = User.create(
  first_name: "Tom",
  last_name: "Deadman",
  sex: "male",
  age: 32,
  profile_name: "dangerous-deadman",
  email:"tom@email.com",
  password: "password",
  password_confirmation: "password",
  level: "9",
  matches_played: 100,
  wins: 70,
  losses: 30,
  elo: 2459,
  form: "WLLWw",
  )

u12 = User.create(
  first_name: "Charlie",
  last_name: "Asgill",
  sex: "male",
  age: 34,
  profile_name: "Ace",
  email:"charlie@email.com",
  password: "password",
  password_confirmation: "password",
  level: "10",
  matches_played: 420,
  wins: 400,
  losses: 20,
  elo: 2799,
  form: "WWWWw",
  )
u13 = User.create(
  first_name: "Tessa",
  last_name: "Petman",
  sex: "female",
  age: 30,
  profile_name: "tessy",
  email:"tesse@email.com",
  password: "password",
  password_confirmation: "password",
  level: "5",
  matches_played: 12,
  wins: 6,
  losses: 6,
  elo: 1050,
  form: "WWWWw",
  )

u14 = User.create(
  first_name: "Nikki",
  last_name: "Neilson",
  sex: "female",
  age: 31,
  profile_name: "nikkineilson",
  email:"nikki@email.com",
  password: "password",
  password_confirmation: "password",
  level: "5",
  matches_played: 20,
  wins: 6,
  losses: 14,
  elo: 1020,
  form: "LLLLW",
  )
u15 = User.create(
  first_name: "Arthur",
  last_name: "Watson",
  sex: "male",
  age: 49,
  profile_name: "AAWat",
  email:"arthur@email.com",
  password: "password",
  password_confirmation: "password",
  level: "5",
  matches_played: 190,
  wins: 85,
  losses: 105,
  elo: 1520,
  form: "LLLLW",
  )

u16 = User.create(
  first_name: "Alex",
  last_name: "Prinelli",
  sex: "male",
  age: 43,
  profile_name: "Pringle",
  email:"alex@email.com",
  password: "password",
  password_confirmation: "password",
  level: "5",
  matches_played: 45,
  wins: 25,
  losses: 20,
  elo: 1320,
  form: "LLLLW",
  )

u16 = User.create(
  first_name: "Phil",
  last_name: "Watson",
  sex: "male",
  age: 45,
  profile_name: "big-phil",
  email:"philx@email.com",
  password: "password",
  password_confirmation: "password",
  level: "5",
  matches_played: 65,
  wins: 15,
  losses: 50,
  elo: 1020,
  form: "LWWLL",
  )
u17 = User.create(
  first_name: "Wayne",
  last_name: "Purvis",
  sex: "male",
  age: 42,
  profile_name: "wayep",
  email:"wayne@email.com",
  password: "password",
  password_confirmation: "password",
  level: "3",
  matches_played: 85,
  wins: 15,
  losses: 60,
  elo: 1010,
  form: "LLLLL",
  )
u18 = User.create(
  first_name: "Reef",
  last_name: "Read",
  sex: "male",
  age: 28,
  profile_name: "reef",
  email: "reef@email.com",
  password: "password",
  password_confirmation: "password",
  level: "1",
  matches_played: 15,
  wins: 0,
  losses: 15,
  elo: 1000,
  form: "LLLLL",
  )
u19 = User.create(
  first_name: "Arthur",
  last_name: "Lacsene",
  sex: "male",
  age: 28,
  profile_name: "arti",
  email: "artil@email.com",
  password: "password",
  password_confirmation: "password",
  level: "7",
  matches_played: 25,
  wins: 20,
  losses: 5,
  elo: 1200,
  form: "LLWWL",
  )
u20 = User.create(
  first_name: "Mark",
  last_name: "Crabbie",
  sex: "male",
  age: 35,
  profile_name: "crab-man",
  email: "mc@email.com",
  password: "password",
  password_confirmation: "password",
  level: "7",
  matches_played: 100,
  wins: 1,
  losses: 99,
  elo: 1001,
  form: "LLWWL",
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
== README


Project Squash-Tinder
=============    

**About**


This is a project initiated while I (Iain Watt) was a student at GA. The idea is/was for an app that would allow a person who wanted to play squash against an opponent to be matched with them. They would initially be matched on their current location and level of play (playing standard/ability). Initaially this is determined by user input but a rating system based on the elo rating system is prefered (implementation will depend on time). The initial goal was to develop something that has the useability of Tinder, great ease at moving through user profiles and then an effective matching system. This app contains some kind of dummy booking system that would be very nice if it existed but in reality hard to implement. 


**Built With / Stack**


- Rails 4.2.0
- Ruby 2.1.4 
- Angular 1.3.15 
- postgreSQL 9.4.0


This was my first Angular.js project so please excuse some best-practice transgressions that have certainly been committed. It was built on rails, a choice made as it was a framework I was most familiar with at the time.   

**On Heroku:**

https://app-name.herokuapp.com/



**To run locally:**

Install the above dependencies, clone and run:

    $ bundle
    $ rake db:create
    $ rake db:migrate
    $ rake db:seed
    $ rails s

App will be served on localhost:3000 by default.




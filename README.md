CowboyNinjaBear
=================

## What is it?

A Rock Paper Scissors-kind of game, but with cowboys, ninjas and bear. The computer randomly selects an option and the player must try to beat him. The app can be found [here](http://fathomless-lake-5547.herokuapp.com/), and the app at staging [there](http://rocky-coast-2876.herokuapp.com/).


##How was it built?

By myself as a Makers Academy weekend challenge - base Javascript code was supplied by the coach. I then built the Sinatra server, and used CSS and bootstrap to make it look decent.

As usual the project was TDDed, and we were encouraged to push to Heroku regularly, using a staging remote, which if the deployment was successful was followed by a push to a production remote.

As part of the challenge I also installed the New Relic add on to see stats about my app.


![screenshot](https://github.com/binaryberry/RockPaperScissors/blob/master/public/screenshotCNB.png)

##The brief


#### Task 1

Grab the code [from the repo](https://github.com/makersacademy/rockpaperscissors), and create a sinatra based web application that you can paly on your browser.

====


#### Task 2

Deploy the application to Heroku. Have two separate deployment targets: Staging and Production.

So you will have two apps on Heroku that you will be deploying to and three git remotes **(origin, staging production)**

The goal is to have two separate deployment targets running in the same environment and on the same platform. This way you can deploy to staging first and, if everything goes well, deploy to production later.

===========

#### Task 3

After deployed it to Heroku, add NewRelic add-on to the production environment on Heroku and find out the average page loading time using NewRelic´s interface. Explore NewRelic to see what other analytical tools are available.

Write a little about what can be done with NewRelic in your own words and understanding.

==============

#### Bonus Level

Add some CSS to the app to make it beautiful.

What New Relic does
=================
New Relic provides a range of information about the performance of websites. It can measure the response time of the website, give a breakdown of response time per page, the memory usage, etc. and show the evolution of this performance over time.

![image](https://github.com/binaryberry/RockPaperScissors/blob/master/public/NewRelic.png)
var app = require('express')();
var server = require('http').Server(app);

var bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }))
app.use(require('express-ejs-layouts'));
app.use(require('express').static('public'));

app.set('view engine', 'ejs');


class NinjaBearCowboy < Sinatra::Base
  configure :production do
  require 'newrelic_rpm'
  end

  get '/' do
    erb :index
  end

  get '/new-game' do
  	erb :new_player
  end

  post '/register' do 
  	@player = params[:name]
  	erb :play	
  end

  post '/play' do
  	player = Player.new(params[:name])
  	player.picks = params[:pick]
  	computer = generate_computer
  	@game = Game.new(player, computer)
  	erb :outcome
  end

  get '/play' do
    erb :play
  end

  def generate_computer
  	choice = ["Ninja","Bear","Cowboy"].sample

  	comp = Player.new("computer")
  	comp.picks = choice
  	comp
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end

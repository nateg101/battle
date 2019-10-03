require_relative 'lib/player'
require_relative 'lib/game'
require 'sinatra/base'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.defender)
    erb :attack
  end

  post '/switch-turn' do
    @game = $game
    @game.switch_turn
    redirect ('/play')
  end

  run! if app_file == $0
end

# frozen_string_literal: true

require_relative 'lib/player'
require_relative 'lib/game'
require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack(@game.defender)
    erb :attack
  end

  post '/switch-turn' do
    @game.switch_turn
    redirect '/play'
  end

  get '/end-game' do
    erb :end_game
  end

  run! if app_file == $PROGRAM_NAME
end

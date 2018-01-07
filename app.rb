require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'
require './lib/weapon'
require './lib/computer'

class RPSApp < Sinatra::Base
  enable :sessions

  before do
    @game = Game.current_game
  end

  get '/' do
    erb(:index)
  end

  get '/play' do
    @game = Game.create_game(Player.new(params['player1_name']))
    erb(:play)
  end

  get '/choice' do
    @game.player1.set_weapon(Weapon.new(params['choice']))
    @game.decide_result
    erb(@game.result)
  end
end

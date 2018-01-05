require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPSApp < Sinatra::Base
  enable :sessions

  before do
    @game = Game.current_game
  end

  get '/' do
    erb(:index)
  end

  get '/play' do
    @game = Game.create_game(Player.new(params['player_name']))
    erb(:play)
  end

  get '/choice' do
    @game.player.set_weapon = Weapon.new(params['choice'])
    erb(:result)
  end

end

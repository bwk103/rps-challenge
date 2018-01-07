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

  post '/play' do
    if params['player2_name'].empty?
      @game = Game.create_game(Player.new(params['player1_name']))
    else
      @game = Game.create_game(Player.new(params['player1_name']),
                              Player.new(params['player2_name']))
    end
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @game.current_player.set_weapon(Weapon.new(params['choice']))
    @game.switch_players
    if @game.current_player.weapon
        redirect '/result'
    else
        redirect '/play'
    end
  end

  get '/result' do
    @game.decide_result
    erb(@game.result)
  end
end

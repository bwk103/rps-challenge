require 'sinatra/base'
require './lib/player'

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
    @choice= params['choice']
    erb(:result)
  end
end

require 'sinatra/base'
require './lib/player'

class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @game = Game.new(Player.new(params['player_name']))
    erb(:play)
  end

  get '/choice' do
    @choice= params['choice']
    erb(:result)
  end
end

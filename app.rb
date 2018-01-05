require 'sinatra/base'
require './lib/player'

class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player = Player.new(params['player_name'])
    erb(:play)
  end
end

require 'sinatra/base'


class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player_name = params['player_name']
    erb(:play)
  end
end

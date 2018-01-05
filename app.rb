require 'sinatra/base'


class RPSApp < Sinatra::Base

  get '/' do
    'Hello world!'
  end
end

require 'sinatra/base'
require 'sinatra/reloader'

class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Welcome To Chitter'
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/chitter' do
    p params
    p "Cheet Submitted!"
  end
  
  run! if app_file == $0
end

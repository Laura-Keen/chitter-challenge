require 'sinatra/base'
require 'sinatra/reloader'
require './lib/peep'
require './lib/user'

class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions, :method_override

  get '/' do
    erb :index
  end

  get '/peeps' do
    @peeps = Peep.all
    erb :'peeps/index'
  end

  get '/peeps/new' do
    erb :'peeps/new'
  end

  post '/peeps' do
    Peep.create(message: params[:message])
    redirect '/peeps'
  end

  delete '/peeps/:id' do
    Peep.delete(id: params[:id])
    redirect '/peeps'
  end

  get '/users/new' do
    erb :'users/new'
  end

  post '/users' do
    User.create(email: params[:email], password: params[:password])
    redirect '/'
  end

  run! if app_file == $0
end

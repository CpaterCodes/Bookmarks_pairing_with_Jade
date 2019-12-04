require 'sinatra/base'
require './lib/bookmarks'

class Bookmark < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmark/list' do
    @list = Bookmarks.all
    erb :'bookmark/list'
  end

  get '/bookmark/add' do
    erb :'bookmark/add'
  end

  post '/bookmark/add' do
    Bookmarks.add(params['new_bookmark'])
    redirect '/bookmark/list'
  end

  run! if app_file == $0

end

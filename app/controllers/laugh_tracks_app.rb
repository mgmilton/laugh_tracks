class LaughTracksApp < Sinatra::Base
  get '/' do
    erb  :home
  end

  get '/comedians' do
    @comedians = Comedian.all
    erb :index
  end

  get '/comedians/:id' do
    @comedian = Comedian.find_by(age: params[:id])
    erb :'show'
  end
end

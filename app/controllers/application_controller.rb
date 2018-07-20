require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

 get '/' do
    erb :index
  end
  
  post '/' do
    @first_response = params [:response1]
    @second_response = params [:response1]
    @third_response = params [:response1]
    @result =   kwiz_return(@first_response, @second_response, @third_response)
    return erb :results
  end
  
  get '/environmentalism' do
    erb :environmentalism
  end
  
  get '/guncontrol' do
    erb :guncontrol
  end
  

  get '/immigration' do
    erb :immigration
  end
  
  get '/LGBTQplus' do
    erb :LGBTQplus
  end
  
   get '/sexism' do
    erb :sexism
  end
  
   get '/suicideawareness' do
    erb :suicideawareness
  end
  

end

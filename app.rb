require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    puts params
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.capitalize
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
  end

  get '/list_my_friends' do 
    puts params
    erb :list_my_friends
  end 

  post '/list_my_friends' do 
    binding.pry
    params["string"].map do |friend|  
      friend
    end 
    
    erb :friends_list
  end 
end
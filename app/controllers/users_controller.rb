class UsersController < ApplicationController
 
  
  get "/login" do
    erb :'users/login'
  end 
  
  
  post "/login" do
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      
      flash[:message] = "Welcome back #{user.name} !"
      redirect "/users/#{user.id}"
    else
      flash[:error] ="Invaid Email or Password.Try again !"
      redirect '/login'
    end 
  end  
  
  get "/users/:id" do
    
    @user = User.find_by(id: params[:id])
    erb :'users/show'
  end 
  
  get '/signup' do
    erb :'/users/signup'
  end 
  
  post '/signup' do
    @user = User.new(params)
    
    if @user.save
      session[:user_id] = @user.id
      redirect"/users/#{@user.id}"
    else
      flash[:error]="Please fill out all fields to make an Artistree !"
      redirect '/signup'
    end
  end 
  

get '/logout' do
  session.clear
  redirect '/'
end
end

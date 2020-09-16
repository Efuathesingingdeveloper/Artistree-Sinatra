class UsersController < ApplicationController
 

  get "/login" do
    "login route!"
    erb :login
  end 

  post "/login" do
user = User.find_by(email: params[:email])
if user && user.authenticate(params[:password])
session[:user_id] = user.id
# binding.pry

redirect "/users/#{user.id}"
else
  redirect '/login'
end 
  end 
  get "/users/:id" do
    "users show Page !"
  end 
 
end 
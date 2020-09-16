class PostsController < ApplicationController

get '/posts' do
 @posts = Post.all
erb:'posts/index'
end

get "/posts/new" do 
erb :"posts/new"
end

post "/posts" do
   post= Post.create(work: params[:work], description: params[:description], link: params[:link], user_id: current_user.id)
    redirect "/posts/#{post.id}"
end


get '/posts/:id' do
@posts = Post.find(params[:id])
erb :"/posts/show"
end
end
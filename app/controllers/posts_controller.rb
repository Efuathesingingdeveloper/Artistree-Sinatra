class PostsController < ApplicationController



    

get '/posts' do
 @posts = Post.all
erb:'posts/index'
end

get '/posts/:id' do
@posts = Post.find(params[:id])
erb :"/posts/show"
end
end 
class PostsController < ApplicationController

get '/posts' do
 @post = Post.all
erb :'posts/index'
end


get "/posts/new" do 
erb :"posts/new"
end

post "/posts" do
    post= Post.new(work: params[:work], description: params[:description], link: params[:link], user_id: current_user.id)
if post.save

    flash[:message] ="Congratulations! you added a leaf to your tree"
   redirect "/posts/#{post.id}"
    else
        flash[:error]="your leaf was NOT added to your Artistree sucessfully: #{post.errors.full_messages.to_sentence}"
        redirect "/posts/new"
    end
end

get '/posts/:id' do
@post = Post.find(params[:id])
erb :'/posts/show'
end

get '/posts/:id/edit' do
    @post = Post.find(params[:id])
    erb :'/posts/edit'
end

patch '/posts/:id' do
    @post = Post.find(parmas[:id])
    @post.update(title: params[:work], description: params[:description], link: params[:link])
redirect "/posts/#{@post.id}"
end 

delete '/posts/:id' do
    @post = Post.find(params[:id])
    @post.destroy
    redirect '/posts'
end
end
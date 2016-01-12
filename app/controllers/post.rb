get '/posts' do
  @posts = Post.order(:created_at)
  erb :'posts/index'
end

get '/posts/new' do
  erb :'posts/new'
end

get '/posts/:id/edit' do
  @post = Post.find_by(id: params[:id])
  erb :'posts/edit'
end

get '/posts/:id' do
  @post = Post.find_by(id: params[:id])
  @user = User.find_by(id: @post.user_id)
  erb :'posts/show'
end

post '/posts/new' do
  @post = Post.new(params[:post])
  if @post.save
    redirect '/'
  else
    @new_post_errors = @post.errors.full_messages
    erb :'posts/new'
  end
end

post '/posts/:id/upvote' do
  @post = Post.find_by(id: params[:id])
  @user = @post.user
  @post_vote = PostVote.create(post: @post, user: @user)
  vote_count = @post.post_votes.count.to_json
end

post '/posts/:id/downvote' do
  # @post = Post.find_by(id: params[:id])
  # @post.post_votes.shift
  # vote_count = @post.post_votes.count.to_json
end

put '/posts/:id' do
  post = Post.find_by(id: params[:id])
  post.update(params[:post])
  redirect "/posts/#{post.id}"
end

delete '/posts/:id' do
  post = Post.find_by(id: params[:id])
  post.destroy
  redirect "/"
end


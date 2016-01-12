post '/comments/new' do
  @comment=Comment.new(params[:comment])

  if @comment.save
  redirect "posts/#{params[:comment][:post_id]}"
  else
  erb :'posts/show'
  end
end

delete '/comments/:id' do
  binding.pry
  comment = Comment.find_by(id: params[:id])
  user = comment.user
  comment.destroy
  redirect "/user/#{user.id}"
end

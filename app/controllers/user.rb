get '/user/:id' do
  @user = User.find_by(id: session[:user_id])
  erb :'user/show'
end

post '/user/new' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    @sign_up_errors = @user.errors.full_messages
    erb :'login/index'
  end
end

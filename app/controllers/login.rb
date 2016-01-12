get '/login' do
  @user = User.new
  erb :'login/index'
end

post '/login' do
  @user = User.find_by(name: params[:user][:name])
  if @user && @user.password == params[:user][:password]
    session[:user_id] = @user.id
    redirect '/'
  else
    @user = User.new(params[:user])
    @login_errors = ["Incorrect Name or Password"]
    erb :'login/index'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end

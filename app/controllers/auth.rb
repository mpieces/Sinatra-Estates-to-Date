
# SIGN UP:
# how to implement different sign up forms??
get '/shoppers/new' do
 erb :shopper_sign_up
  if request.xhr?
    erb :shopper_sign_up, layout: false
  else
    redirect "estatesales/#{@sale.id}"
  end
end

post '/shoppers' do
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      # current_user.update_attribute :shopper, true
      current_user.toggle!(:shopper)
      redirect "/"
    else
      erb :shopper_sign_up
    end
end

get '/users/new' do
  erb :lister_sign_up
end

post '/users' do
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      # current_user.update_attribute :lister, true
      current_user.toggle!(:lister)
      redirect "/estatesales/new"
    else
      erb :lister_sign_up
    end
end

# SIGN IN:
get '/sessions/new' do
  erb :sign_in
  if request.xhr?
    erb :sign_in, layout: false
  else
    redirect '/estatesales/#{@sale.id}'
  end
end

post '/sessions' do
  @user = User.authenticate(params[:username], params[:password])
  if @user
    session[:user_id] = @user.id
    redirect '/'
  # elsif logged_in? && current_user.lister?
  #   redirect "/estatesales/new"
  else
    @error = "Username or Password incorrect. Try again."
    erb :sign_in
  end
end

# LOG OUT:  (link appears on right of nav bar)
get '/logout' do   # use delete '/sessions'?
  session[:user_id] = nil
  redirect '/'
end
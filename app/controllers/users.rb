

# VIEW USER'S FAVORITE SALES
get '/favorites' do
  if logged_in?
    @favorites = current_user.favorites
    erb :'users/favorites'
  end
end


# SAVE A NEW FAVORITE
post '/favorites' do
  p params
  if request.xhr?
    @user = current_user
    @favorites = @user.favorites.create(estatesale_id: params[:estatesale_id])
    (status 200).to_json
  else
    redirect 'estatesales/#{@sale.id}'
  end
end

# REMOVE A FAVORITE
delete '/favorites/:id' do
    @to_remove = Favorite.find(params[:id])
    @to_remove.destroy
    redirect '/favorites'
end


# VIEW USER PROFILE PAGE (STILL WORKING ON THIS)
# just for listers
# get '/users/:id' do
#   if logged_in? && current_user.lister?
#     @user = User.find(params[:id])
#     # @company = @user.company
#     @company = Company.all
#     erb :"users/profile"
#   end
# end
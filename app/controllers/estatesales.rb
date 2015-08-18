
get '/' do
  redirect '/estatesales'
end

# HOME/INDEX (list of all current sales)
get '/estatesales' do
  @sales = Estatesale.all
  # @zips = ZipCodes.new
  # @distance = @zips.get_distance(94115, 90210)
  erb :"estatesales/index"
end

# CREATE/LIST NEW SALE
get '/estatesales/new' do
  if logged_in? && current_user.lister?
    @sale = Estatesale.new
    erb :"estatesales/form"
  else
    redirect '/users/new'
  end
end

post '/estatesales' do
  @sale = Estatesale.new(params[:sale])

  if @sale.save
    redirect "/estatesales/#{@sale.id}"
  else
    @error = "Sale did not save correctly."
    erb :"estatesales/form"
  end
end

# VIEW DISTANCES FROM SALES BY ZIP CODE
get '/estatesales/zip' do

  # @sales = Estatesale.all
  # @sales.each do |sale|
  #   p sale.zip_code
   redirect "http://www.zipcodeapi.com/rest/3jChldANvWrLv7nK5iG6I3QhUk42mJmp3YHpchdHdEsJMQtR89YRdO879cawWxWZ/distance.json/#{@zip_code1}/75225/mile"

  # end
end

post '/estatesales/zip' do
  if request.xhr?
    @zip_code1 = params[:search].to_json
    p @zip_code1
  end
end

# SHOW PARTICULAR SALE'S DETAILS
get '/estatesales/:id' do
  @sale = Estatesale.find(params[:id])
  erb :"estatesales/show"
end

# UPDATE A SALE'S LISTING
get '/estatesales/:id/edit' do
  if logged_in? && current_user.lister?
    @sale = Estatesale.find(params[:id])
    erb :'estatesales/edit'
  else
    @error = "You must be authorized to edit this listing."
  end
end

put '/estatesales/:id' do   # took out "/edit"
  @sale = Estatesale.find(params[:id])
  @sale.update_attributes(params[:sale])
  # @sale.save
  redirect "/estatesales/#{@sale.id}"
end

# DELETE A LISTING
delete '/estatesales/:id' do
  if logged_in? && current_user.lister?
    @sale = Estatesale.find(params[:id])
    @sale.destroy
    redirect '/'
  else
    @error = "You must be authorized to delete a listing."
  end
end

# what happens if an Estatesale for the ID requested doesn't exist? The user would see an exception, which isn't ideal in a production environment. Just something to keep in mind in the future.
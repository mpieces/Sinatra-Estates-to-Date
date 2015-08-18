
get '/companies' do
  @companies = Company.all
  erb :"companies/index"
end
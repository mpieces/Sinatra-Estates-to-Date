require 'open-uri'
require 'json'

distances = {}
sales.each do |sale|
 page = open("http://www.zipcodeapi.com/rest/dfEdY14av1kBJ5T0iLXmLCZnovb6qYQDdvQcxVm2XHEGMxH4jFr4hrsGWDMmCDZP/distance.json/#{sale.zip_code}/#{starting_zip_code}/mile")
 result = JSON.parse(page.read)
 distance result["distance"]
  distances[sale.id] = distance
end

@distances = distance

----


<%- sales.each do |sale| %>

  <% if @distances[sale.id].present? %>
   Distance: <%= @distances[sale.id] %>
  <% end >

<% end %>




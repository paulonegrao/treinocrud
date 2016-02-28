require "sinatra"
require "sinatra/reloader"
require "faker"

enable :sessions

get "/" do
  # by calling erb method with an argument, Sinatra will look in the views folder located #within the same folder as this file (app.rb) and it will render a file named: index.erb #(this is called convenctio)
  #erb method will render the index.erb
  erb(:index, {layout: :app_layout})
end

get "/hello" do
  @name = "Tam"
  erb :hello, layout: :app_layout
end

get "/hi" do
  "fala again..."
end

get "/catch_phrase" do
  @catch_phrase = Faker::Company.name
  erb :catch_phrase, {layout: :app_layout}
end

get "/contact" do
  erb :contact, {layout: :app_layout}
end

post "/contact_submit" do
  @param = params
  erb :thankyou, layout: :app_layout
end

get "/temperature" do
  erb :temperature, layout: :app_layout
end

post "/temperature_submit" do
    @param = params
    erb :temp_calc, layout: :app_layout
end

get "/color" do
  erb :color, layout: :app_layout
end

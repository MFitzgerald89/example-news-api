class ArticlesController < ApplicationController

def index
response = HTTP.get("https://newsapi.org/v2/everything?q=cars&apiKey=#{Rails.application.credentials.new_api[:api_key]}")
data = JSON.parse(response.body)
render json: data
end

end

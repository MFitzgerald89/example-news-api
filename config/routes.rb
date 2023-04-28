Rails.application.routes.draw do
  get "/articles" => "articles#index"

  get "/weather" => "weather#index"
end

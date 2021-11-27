class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/" do
    { coins: "why wont this work!" }.to_json
  end

  get "/coins" do
    coins = Coin.all
    coins.to_json
  end

  get "/coins/:id" do
    coins = Coin.find(params[:id])
    coins.to_json
  end

  post "/coins" do
    coins = Coin.create(name: params[:name], price: params[:price])
    coins.to_json
  end
  
  patch "/coins/:id" do
    coins = Coin.find(params[:id])
    coins.update(name: params[:name], price: params[:price])
    coins.to_json
  end
  
  delete "/coins/:id" do
    coins = Coin.find(params[:id])
    coins.destroy
    coins.to_json
  end
  
  get "/portfolios" do
    portfolio = Portfolio.all
    portfolio.to_json
  end

end

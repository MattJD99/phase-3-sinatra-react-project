require 'open-uri'
require 'net/http'
require 'json'

puts "🌱 Seeding spices..."

Coin.create([
    {
    name: "cardano",
    price: 1.56,
    price_change_24hr: -8.12
    },
    {
    name: "ethereum",
      price: 4078.4,
    price_change_24hr: -10.21
    },
    {
    name: "decentraland",
      price: 4.73,
    price_change_24hr: -7.49
    },
    {
    name: "bitcoin",
      price: 54192,
    price_change_24hr: -8.53
    },
    {
    name: "siacoin",
    price: 0.0252913,
    price_change_24hr: 13.18
    }
])

Portfolio.create([
  {
    user_id: "Matt",
    name_of_portfolio: "Matt's Portfolio",
    price_paid: 2.00,
    coin_name: "cardano",
    price: 1.56,
    price_change_24hr: -8.12
  }
])
# Coin.create do
#     response = RestClient.get "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin%2Cethereum%2Ccardano%2Csiacoin%2Cdodgecoin%2Cdecentraland&vs_currencies=usd&include_24hr_change=true"
#     # response = RestClient.get "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=1&page=1&sparkline=false"
#     coin_hash = JSON.parse(response)
#     coin_hash.each do |hash|
#         hash.each do |key,value|
#          (key.to_s + ': ' + value.to_s)
#         end
#     end
# end
        

puts "✅ Done seeding!"
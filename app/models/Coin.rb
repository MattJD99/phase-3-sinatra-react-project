class Coin < ActiveRecord::Base
    has_many :portfolios
end
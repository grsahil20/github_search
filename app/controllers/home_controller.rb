class HomeController < ApplicationController
  def index
  end
  def search
  	@results = [
  		{name: 'Ruby Ruby', link: 'https://github.com/ruby/ruby'},
  		{name: 'Airbnb Ruby', link: 'https://github.com/airbnb/ruby'},
  	]
  	@results = []
  end
end

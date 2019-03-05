class HomeController < ApplicationController
  def index
  end

  def search
  	query_service = GithubQuery.new(query: params[:query])
  	query_service.run

  	@items = query_service.items
  	@total_count = query_service.total_count
  end
end

require 'open-uri'

class GithubQuery

	attr_reader :total_count, :items

	def initialize(query:)
		@query = query
		@total_count = 0
		@items = []
	end

	def run
		return unless @query.present?
		begin
			response = JSON.parse(open("https://api.github.com/search/repositories?q=#{@query}").read)
			@total_count = response['total_count']
			@items = response['items']
			return true
		rescue
			return false
		end
	end
end


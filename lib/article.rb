require 'active_support/all'
require 'pry'

class Article

	def initialize
		@final_articles = []
	end

	def recommended (article_recommendation, index=0)
		index = index - 3 if index == 3
		articles_array = article_recommendation.to_a
			if @final_articles.count < 4 and articles_array.present?
				@final_articles << articles_array[index][1][0] if articles_array[index].present? and articles_array[index][1][0].present? and !(@final_articles.include? articles_array[index][1][0])
				articles_array[index][1].delete_at(0) if articles_array[index]
				articles_array = articles_array.select{|element| element[1].present?}
				recommended(articles_array, index + 1)
			else
				p @final_articles.map{|article| article['token'].to_i}
			end
	end

end
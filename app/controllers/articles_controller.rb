class ArticlesController < ApplicationController

	def index

		@articles=Article.all

	end

	def new
		
	end

	def create
		@article = Article.new article_params
		@article.save
		redirrect_to :index
	end

	def article_params
		params.require(:article).permit(:title, :text)
	end
end

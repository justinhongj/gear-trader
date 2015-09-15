class CategoriesController < ApplicationController 

	def show
		category = params[:name]
		@posts = Post.where(category: category)
		@category = @posts.first.category

	end

end
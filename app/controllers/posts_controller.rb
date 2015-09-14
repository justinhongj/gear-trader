class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit

	end

	def update

	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params.require(:post).permit(:user_id, :title, :description, :condition, :wanted, :status, :category))
	end

	def guitars
		@posts = Post.all
	end

	def bass
		@posts = Post.all
	end

	def amplifiers
		@posts = Post.all
	end

	def effects
		@posts = Post.all
	end

	def drums
		@posts = Post.all
	end

	def keyboards
		@posts = Post.all
	end

	def live
		@posts = Post.all
	end

	def recording
		@posts = Post.all
	end

end

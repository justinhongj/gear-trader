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
		@post = Post.new(params.require(:post).permit(:user_id, :title, :description, :condition, :wanted, :status, :category_id))

		if @post.save
			redirect_to post_path(@post)
		else
			redirect_to new_post_path
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to profile_path
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

	def microphones
		@posts = Post.all
	end

	def other
		@posts = Post.all
	end

end

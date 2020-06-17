class PostsController < ApplicationController
	before_action :authenticate_author!, except: [:index]

	def index
		@posts = Post.all
	end

	def new
		@post=current_author.post.build
	end
	
	def create
	  @post=current_author.post.build(post_params)
	    respond_to do |format|
		      if @post.save
		        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
		      else
		        format.html { render :new }
		      end
    	end	
	end
	
	private
	
	def post_params
		params.require(:post).permit(:title,:body)
	end
end

class PostsController < ApplicationController
	before_action :authenticate_user!, except: [:index]

	def index
	end

	def new
		@post=Post.new
	end
end

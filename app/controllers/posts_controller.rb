class PostsController < ApplicationController
  before_action :authenticate_with_token!
  respond_to :json

  def index
    posts = Post.all
    render json: posts, status: 200
  end
end

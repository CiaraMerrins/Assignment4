class PostsController < ApplicationController
before_action :authenticate_admin!, except: [:index, :show]
attr_accessor :body
def index
@posts = Post.all.order('created_at DESC')

end
def new
end
def create
	@post= Post.new(post_params)
	@post.save
	redirect_to @post
end
def show
@post = Post.find(params[:id])
end
#memento pattern
#def initialize body
 #   @body = body
  #end
  def restore_save version
    @body = version.body
  end
private
def post_params
params.require(:post).permit(:body)
end
end

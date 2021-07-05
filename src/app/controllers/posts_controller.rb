class PostsController < ApplicationController
  def create
    p = post_params
    user = User.find(p[:id])
    if (p[:body]=='')
      flash[:alert] = 'null comment is not allowed'
    else
      if user.posts.create(body: p[:body], submitter: current_user.id)
        flash[:notice] = 'post was created successfully'
      else
      flash[:alert] = 'something wrong'
      end
    end
    
    redirect_to user_path(user.id)
  end
  protected
  def post_params
    params.require(:post).permit(:body,:id)
  end
end

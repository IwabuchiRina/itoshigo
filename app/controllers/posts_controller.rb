class PostsController < ApplicationController
  def new
    @post = Post.new()
    @pets = Pet.where(user_id: current_user.id)
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    p = params.permit(
    :title,
    :content,
    :status,
    :pet_id
    )
    p[:user_id] = current_user.id
    Post.create!(p)
    flash[:success] = '日記を保存しました！'
    redirect_to "/calender"
  end

  def create_comment
    p = params.permit(
      :content,
    )
    p[:user_id] = current_user.id
    p[:post_id] = params[:id]
    PostComment.create(p)
    flash[:success] = 'コメントを投稿しました！'
    redirect_to post_url(params[:id]) 
  end
end

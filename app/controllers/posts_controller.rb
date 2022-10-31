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
    Post.create(p)
    flash[:success] = '日記を保存しました！'
    redirect_to "/mypage"
    end
end

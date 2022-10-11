class PostsController < ApplicationController
  def new
    @post = Post.new()
  end

  def create
    p = params.permit(
    :title,
    :content,
    :status
    )

    p[:user_id] = current_user.id
    Post.create(p)
    flash[:success] = '日記を保存しました！'
    redirect_to "/mypage"
    end
end

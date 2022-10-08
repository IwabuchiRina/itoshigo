class PostsController < ApplicationController
  def new
    post = Post.new()
  end

  def create
    p = params.permit(
    :title,
    :content,
    :status
    )
    #p = {
    #:title,タイトルに入れた文字
    #:content,内容を入れた文字
    #:status ステータスに入れた文字
    #)

    P[:user_id] = current_user.id
    Post.create(p)
    #insert into posts(title, content, status) values ('aaa', 'bbb', 'ccc');
  end
end

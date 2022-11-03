class SearchController < ApplicationController
  def index
    @keyword = params[:q]
    @posts = Post.where(status: 2)

    if @keyword.present?
      @posts = @posts
        .where('title like ?', "%#{@keyword}%")
        .or(
          Post.where(status:2)
        .where('content like ?', "%#{@keyword}%")
        )
    end
  end
end

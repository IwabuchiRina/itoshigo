class TopController < ApplicationController
  def index
    # もしユーザーがログインしていたら、mypageを表示する。そうじゃなければ、何もしない
    if user_signed_in?
      redirect_to "/mypage"
    else
    end
  end
end
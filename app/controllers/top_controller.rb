class TopController < ApplicationController
  def index
    if user_signed_in?
      redirect_to "/calender"
    else
    end
  end
end
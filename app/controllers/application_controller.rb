class ApplicationController < ActionController::Base
  #deviseコントローラーにストロングパラメータと追加する
  #before_action :configure_permitted_parameters, if: devise_controller?

  protected
  def configure_permitted_parameters
  #サインアップ時にnameのストロングパラメータを追加する
    devise_parameter_sanitizer.permit(:sing_up, key: [:name])
  end
end
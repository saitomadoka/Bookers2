
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? 

  def after_sign_in_path_for(resource)
    user_path(resource)  # /users/:id
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path  # ログアウト後にトップページに戻す
  end
  

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :introduction, :profile_image])
  end
end
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nick_name, :birthday, :family, :first, :family_kana, :first_kana, address_attributes:[:post_code, :prefecture_id, :city, :block_number, :building_name, :tel, :user_id]])
  end
end

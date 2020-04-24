class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, :business_name, :phone_number, :address, :company_type, :country])
   devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username, :business_name, :phone_number, :address, :company_type, :country])
 end
end

module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_user
      flash.clear
      # if you have rails_admin. You can redirect anywhere really
      redirect_to(rails_user.dashboard_path) and return
    elsif current_company
      flash.clear
      # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
      redirect_to(authenticated_company_root_path) and return
    elsif current_sales_marketing_experts
      redirect_to(authenticated_sales_and_marketing_experts_root_path)
    end
  end
end

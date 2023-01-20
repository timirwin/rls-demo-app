class ApplicationController < ActionController::Base
  before_action :init_row_level_security

  def init_row_level_security
    # Devise is always called in a state where the user is not authenticated yet
    # return RLS.disable! if devise_controller?
    raise 'ERROR: RLS not set up!' unless current_tenant_id || current_user_id

    RLS.disable!
    user = current_user
    tenant = current_tenant
    RLS.set_tenant tenant
    RLS.set_user user
  end

  def current_tenant
    Tenant.find current_tenant_id
  end

  def current_tenant_id
    1 # Menomonie
  end

  def current_user
    User.find current_user_id
  end

  def current_user_id
    1 # Tim
  end
end

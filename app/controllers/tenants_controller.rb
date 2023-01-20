class TenantsController < ApplicationController
  def index
    @tenants = Tenant.all
  end

  def only_tenant
    RLS.reset!
    RLS.disable!
    RLS.set_tenant current_tenant
    @tenants = Tenant.all
    render :index
  end

  def only_user
    RLS.reset!
    RLS.disable!
    RLS.set_user current_user
    @tenants = Tenant.all
    render :index
  end

  def everything
    RLS.disable!
    @tenants = Tenant.all
    render :index
  end
end

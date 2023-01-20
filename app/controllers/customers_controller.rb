class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def only_tenant
    RLS.reset!
    RLS.disable!
    RLS.set_tenant current_tenant
    @customers = Customer.all
    render :index
  end

  def only_user
    RLS.reset!
    RLS.disable!
    RLS.set_user current_user
    @customers = Customer.all
    render :index
  end

  def everything
    RLS.disable!
    @customers = Customer.all
    render :index
  end
end

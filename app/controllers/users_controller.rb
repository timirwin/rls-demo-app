class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def only_tenant
    RLS.reset!
    RLS.disable!
    RLS.set_tenant current_tenant
    @users = User.all
    render :index
  end

  def only_user
    RLS.reset!
    RLS.disable!
    RLS.set_user current_user
    @users = User.all
    render :index
  end

  def everything
    RLS.disable!
    @users = User.all
    render :index
  end
end

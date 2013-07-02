class Admin::BaseController < ApplicationController
  before_filter :authenticate_admin!

  layout 'admin'

  protected

  def authenticate_admin!
    authenticate_user!
    unless current_user.is_admin
      redirect_to root_url
    end
  end
end

class RegistrationsController < Devise::RegistrationsController
  before_filter :cannot_destroy_admin, only: :destroy

  protected

  def cannot_destroy_admin
    if resource.is_admin?
      redirect_to :back, alert: t('devise.failure.cannot_destroy_admin')
    end
  end
end

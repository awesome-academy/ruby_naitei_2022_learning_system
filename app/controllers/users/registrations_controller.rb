# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :js, :html
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]
  helper_method :after_sign_up_path_for

  def create
    super
  end

  def update
    super
  end

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def after_sign_up_path_for _resource
    root_path
  end
end

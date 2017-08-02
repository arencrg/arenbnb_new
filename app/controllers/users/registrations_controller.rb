class RegistrationsController < Devise::RegistrationsController

  protected

  def update_without_password(params={})
    params.delete(:password)
    params.delete(:password_confirmation)
    result = update_attributes(params)
    clean_up_passwords
    result
  end
end
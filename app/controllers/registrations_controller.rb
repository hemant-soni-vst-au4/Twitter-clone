class RegistrationController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmaton)
  end

  def account_update_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmaton, :current_password)
  end

end
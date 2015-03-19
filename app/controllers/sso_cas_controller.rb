
class SsoCasController < Devise::CasSessionsController
  # Skip redirect_to_sign_in to bypass flash message problem in Rails 4 (https://github.com/nbudin/devise_cas_authenticatable/issues/81)
  skip_before_filter :redirect_to_sign_in, only: [:new, :destroy, :single_sign_out, :service, :unregistered]
  # Skip verify_signed_out_user for Devise >= 3.3.0
  skip_before_filter :verify_signed_out_user
end

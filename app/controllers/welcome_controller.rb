class WelcomeController < ApplicationController

  skip_before_filter :redirect_to_sign_in

  def index
  end

  def ping
    respond_to do |format|
      format.html { render :text => 'pong!' }
    end
  end

end

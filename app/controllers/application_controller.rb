class ApplicationController < ActionController::Base
  before_action :check_session
  def check_session
    unless session[:user_id]
      redirect_to :login
    end
  end
end

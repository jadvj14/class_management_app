class UserController < ApplicationController

  def root

  end

  def authenticate

  end

  def sign_up

  end

  def save
    if params[:confirm_password] != params[:password]
      flash[:message] = 'Passwords doesn''t match'
      redirect_to :sign_up
    end
    user = User.new
    user.username = params[:username]
    salt = SCrypt::Engine.generate_salt
    user.password = SCrypt::Password.create(params[:password])
    user.first_name = params[:first_name]
    user.middle_name = params[:middle_name]
    user.last_name = params[:last_name]
    user.save

    session[:user_id] = user.id
    redirect_to :root
  end
end

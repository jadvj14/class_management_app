class UserController < ApplicationController
  skip_before_action :check_session
  before_action :check_if_logged_in, :except => :logout
  def check_if_logged_in
    if session[:user_id]
      redirect_to '/courses'
    end
  end

  def root

  end

  def logout
    session[:user_id] = nil
    session[:username] = nil
    redirect_to '/'
  end

  def is_null(string)
    string.nil? ? '' : string
  end

  def authenticate
    flash[:message] = 'Invalid username or password'
    user = User.find_by_username(params[:username])
    if user
      password = SCrypt::Password.new(user.password)
      if password == params[:password]
        flash[:message] = nil
        session[:user_id] = user.id
        session[:username] = is_null(user.first_name) + ' ' +  is_null(user.last_name)
      end
    end
    redirect_to '/'
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

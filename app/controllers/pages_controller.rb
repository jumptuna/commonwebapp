class PagesController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def home
    if @signedin
    else
      redirect_to profile_path
    end
  end
  def attemptlogin
    redirect_to home_path
    @log = true
  end
  def signup
  end
  def signin
  end
  def list
  	@users = User.all
  end
  def viewuser
    # @id = User.find(params[:id])
    @id = params[:id]
    redirect_to profile_path

  end
  def profile
    # Creates linked list 
    @users = User.all
    
    @cuser = current_user
    if params[:id] != nil
      @cuser = User.find(params[:id])
     
    end

    params[:id] = 0
    @signedin=true
  
    
    
    # for loading list of nearby users
  end

  def signout
    sign_out current_user
    redirect_to home_path
    @id = 0
    @signedin = false
  end
   
  protect_from_forgery with: :exception
end

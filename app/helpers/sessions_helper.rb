module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    #if current_user
    # return true
    #else
    # return false
    #end
  end
  
  def logged_in?
    !!current_user
    #if current_user
    # return
    #else
    # return false
    #end
  end
end

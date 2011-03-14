module SessionsHelper
  
  def signed_in?
    !current_user.nil?
  end
  
  def deny_access
    redirect_to root_path, :notice => "please sign in to access this page."
  end
  
end


helpers do
 def current_user  # returns user
  @user ||= User.find(session[:user_id]) if session[:user_id]
 end

 def logged_in?
    session[:user_id]  # returns T or F
  end

  def password_valid?(string)
    string.length > 6
  end
end
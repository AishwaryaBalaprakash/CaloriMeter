class SessionsController < ApplicationController
  def new
  end
  
  def create
  user = User.authenticate(params[:email], params[:password])
  if user
    session[:email] = user.id
   # redirect_to search_url, :notice => "Logged in!"
    redirect_to :controller => 'user_infos', :action => 'view', :id => user.id, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end

def destroy
  session[:email] = nil
  redirect_to root_url, :notice => "Logged out!"
end
end

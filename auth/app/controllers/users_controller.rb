
class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(article_params)
    if @user.save
      #redirect_to root_url, :notice => "Signed up!"
      redirect_to :controller=>"users",:action => :index
    else
      render "new"
    end
  end
  def index
  end
  def signed
  end
  
  def article_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end

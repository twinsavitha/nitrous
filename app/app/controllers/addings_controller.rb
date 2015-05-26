class AddingsController < ApplicationController
  def new
  end
  def create
    @values = Admin.new(article_params)
  @values.save
  render :action => 'show'
  end
  def show
    @values = Admin.find(params[:id])
  end
  
 def article_params
   params.require(:article).permit(:name, :password, :role)
  end
end
   
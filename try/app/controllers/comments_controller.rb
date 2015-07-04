class CommentsController < ApplicationController
  def new
     @publish = Publish.find(params[:publish_id])
    @comments = @publish.comms.build
  end
  def create
    puts params
    a = params[:comm]
    b = a["name"]
    @publish = Publish.find(params[:publish_id])
    @author = @publish.comms.create(name: b)
    redirect_to :controller=>"publishes",:action => :show,:id=>params[:publish_id]
    
  end
end

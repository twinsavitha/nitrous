class AuthorController < ApplicationController
  def new
    puts "new1"
    puts params
    @publish = Publish.find(params[:publish_id])
    @author = @publish.build_author
    puts @publish 
    puts "new2"
  end
  def create
    puts params
    a = params[:author]
    b = a["name"]
    @publish = Publish.find(params[:publish_id])
    @author = @publish.create_author(name: b)
   # @author = @publish.build_author(name: b)
   # @author.save
    redirect_to :controller=>"publishes",:action => :index
  end
end

class PublishesController < ApplicationController
  def new
  end
  def create
    puts "print"
   puts  params[:publish]
    a =  params[:publish]
    p a["topic"]
    b = a["topic"]
    p a["text"]
    c = a["text"]
    @publish = Publish.new(topic: b,text: c)
    @publish.save
    redirect_to :controller=>"publishes",:action => :show,:publish_id=>@publish.id
  end
  def show
    puts params[:publish_id]
     @publish = Publish.find(params[:publish_id])
  end
  def index
    @publishes = Publish.all
  end
  def edit
    puts "edit"
    puts params[:publish]
    puts params[:publish_id]
    puts params[:id]
    puts params
    puts params[:format]
    puts "edit end"
    @publish = Publish.find(params[:id])
  end
  def update
=begin
    puts "update"
    puts params[:publish]
    a =  params[:publish]
    b = a["topic"]
    c = a["text"]
    d = a["id"]
    publish.update(topic: b,text: c)
    redirect_to :action => :index
=end
    
    
    puts "update"
    puts params
    @article = Publish.find(params[:publish_id])
 
  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
  end
end


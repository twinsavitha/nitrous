class PublishesController < ApplicationController
  def new
  end
  def create
    a =  params[:publish]
    b = a["title"]
    c = a["text"]
    
    @article = Publish.new(title: b,text: c)
    @article.save
   # @article = Publish.find(1)
   # redirect_to :controller=>"publishes",:action => :show,:id=>@article.id  #first this
    redirect_to :controller=>"author",:action => :new,:publish_id=>@article.id
  end
  def show
     puts params
     @article = Publish.find(params[:id])
  end
  def index
    @publishes = Publish.all
  end
  def edit
    puts params
    @publish = Publish.find(params[:id])
  end
  def update
    puts "update"
    puts params
    puts "update2"
    @article = Publish.find(params[:id])
    puts "update3"
    puts @article
    puts "update4"
    a = params[:publish]
    b = a[:title]
    c = a[:text]
    puts a
    puts b
    puts c
    puts "update5"
    @article.update(title: b, text: c)
    redirect_to :controller=>"publishes",:action => :index
  end
  
  def destroy
    puts "destroy1"
    puts params
    @publish = Publish.find(params[:id])
    @publish.destroy
    redirect_to :controller=>"publishes",:action => :index
  end
end

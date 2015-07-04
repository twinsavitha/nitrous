class PublishesController < ApplicationController
  def new
  end
  def create
   # @article = Publish.new(params.require(:publish).permit(:topic, :text))
    a =  params[:publis]
    b = a["topic"]
    c = a["text"]
    @article = Publish.new(topic: b,text: c)
    @article.save
    puts "@article"
    puts @article
    puts "@article end"
    render :show  #good
   # redirect_to @article
  end
  def show
    puts "params"
    puts params
    puts "params end"
    @article = Publish.find(params[:id])
  end
  def index
    @articles = Publish.all
  end
  def edit
    puts "edit"
    puts params  #this is from index pg <td><%= link_to 'Edit', edit_publish_path(article) %></td>
    puts "edit end"
    @pulish = Publish.find(params[:id]) #must @publish not @article. if we change hea to pulish it shud change even in edit form both places n in update .require
  end
  def update
    @article = Publish.find(params[:id])
     a =  params[:pulish]
    b = a["topic"]
    c = a["text"]
    @article.update(topic: b,text: c)
      render :show
  end
  
   def destroy
    @article = Publish.find(params[:id])
    @article.destroy
     redirect_to :action => "index"
  end
end

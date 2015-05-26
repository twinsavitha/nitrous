class AuthorsController < ApplicationController
  def new
	@publish = Publish.find(params[:publish_id])
    @author = @publish.build_author
  end
  def create
  	@publish = Publish.find(params[:publish_id])
    @author = @publish.build_author(author_params)
    respond_to do |format|
      if @author.save
        format.html { redirect_to :controller=>"publishes",:action=>"index", notice: 'Author was successfully created.' }
        format.json { render :show, status: :created, location: @donor }
      else
        format.html { render :new }
        format.json { render json: @donor.errors, status: :unprocessable_entity }
      end
    end

  end
  private
  def author_params
      params.require(:author).permit(:name)
  end
end

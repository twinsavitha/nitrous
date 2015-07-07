class PublishesController < ApplicationController
  #http_basic_authenticate_with name: "john", password: "guard"  #basic auth(1)
   before_filter :restrict_access  #passing tokens in url(2)
  before_action :set_publish, only: [:show, :edit, :update, :destroy]

  # GET /publishes
  # GET /publishes.json
  def index
    @publishes = Publish.all
  end

  # GET /publishes/1
  # GET /publishes/1.json
  def show
  end

  # GET /publishes/new
  def new
    @publish = Publish.new
  end

  # GET /publishes/1/edit
  def edit
  end

  # POST /publishes
  # POST /publishes.json
  def create
    @publish = Publish.new(publish_params)

    respond_to do |format|
      if @publish.save
        format.html { redirect_to @publish, notice: 'Publish was successfully created.' }
        format.json { render :show, status: :created, location: @publish }
      else
        format.html { render :new }
        format.json { render json: @publish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publishes/1
  # PATCH/PUT /publishes/1.json
  def update
    respond_to do |format|
      if @publish.update(publish_params)
        format.html { redirect_to @publish, notice: 'Publish was successfully updated.' }
        format.json { render :show, status: :ok, location: @publish }
      else
        format.html { render :edit }
        format.json { render json: @publish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publishes/1
  # DELETE /publishes/1.json
  def destroy
    @publish.destroy
    respond_to do |format|
      format.html { redirect_to publishes_url, notice: 'Publish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publish
      @publish = Publish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publish_params
      params.require(:publish).permit(:title, :text)
    end
  ##passing tokens in url(2)
      #def restrict_access
       # api_key = ApiKey.find_by_access_token(params[:access_token])
        #head :unauthorized unless api_key
      #end
  #passing tokens in header(3)
  def restrict_access
  authenticate_or_request_with_http_token do |token, options|
    ApiKey.exists?(access_token: token)
  end
end
end

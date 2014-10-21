class TwitterfeedsController < ApplicationController
  before_action :set_twitterfeed, only: [:show, :edit, :update, :destroy]

  # GET /twitterfeeds
  # GET /twitterfeeds.json
  def index
    #@twitter_feed  = Twitter.user_timeline("SammyKhaleel").first.text
  end

  # GET /twitterfeeds/1
  # GET /twitterfeeds/1.json
  def show
  end

  # GET /twitterfeeds/new
  def new
    @twitterfeed = Twitterfeed.new
  end

  # GET /twitterfeeds/1/edit
  def edit
  end

  # POST /twitterfeeds
  # POST /twitterfeeds.json
  def create
    @twitterfeed = Twitterfeed.new(twitterfeed_params)

    respond_to do |format|
      if @twitterfeed.save
        format.html { redirect_to @twitterfeed, notice: 'Twitterfeed was successfully created.' }
        format.json { render :show, status: :created, location: @twitterfeed }
      else
        format.html { render :new }
        format.json { render json: @twitterfeed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twitterfeeds/1
  # PATCH/PUT /twitterfeeds/1.json
  def update
    respond_to do |format|
      if @twitterfeed.update(twitterfeed_params)
        format.html { redirect_to @twitterfeed, notice: 'Twitterfeed was successfully updated.' }
        format.json { render :show, status: :ok, location: @twitterfeed }
      else
        format.html { render :edit }
        format.json { render json: @twitterfeed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twitterfeeds/1
  # DELETE /twitterfeeds/1.json
  def destroy
    @twitterfeed.destroy
    respond_to do |format|
      format.html { redirect_to twitterfeeds_url, notice: 'Twitterfeed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twitterfeed
      @twitterfeed = Twitterfeed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twitterfeed_params
      params[:twitterfeed]
    end
end

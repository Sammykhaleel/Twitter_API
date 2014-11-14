class TwitterfeedsController < ApplicationController
  before_action :set_twitterfeed, only: [:show, :edit, :update, :destroy]

@@client = Twitter::REST::Client.new do |config|
  config.consumer_key = 'AfmJgIlPWCoetxNUGSVGkQzqN'
  config.consumer_secret = 'JqZWXepFzApQQ4B1WAd9N5MymHoH1almYvAj95vT7domBbHU5U'
  config.oauth_token = '1284314953-vnAmfMLM7UGHUOyfWHapkRXXOBoEa5mfLwYpLxP'
  config.oauth_token_secret = 'XWGJDISQ0TVSdOoV9WNEyAGsGBM1HkqEZdahcD8q4iQk4'
end
  # GET /twitterfeeds
  # GET /twitterfeeds.json
  def index
    @tweets = user_timeline(5)#@twitter_feed  = Twitter.user_timeline("SammyKhaleel").first.text
  end
  def user_timeline(qt)
    @@client.user_timeline(count: qt)
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

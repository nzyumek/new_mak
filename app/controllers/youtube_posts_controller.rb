class YoutubePostsController < ApplicationController
  before_action :set_youtube_post, only: [:show, :edit, :update, :destroy]

  # GET /youtube_posts
  # GET /youtube_posts.json
  def index
    @youtube_posts = YoutubePost.all.page(params[:page]).per(10).order(:id)
  end

  # GET /youtube_posts/1
  # GET /youtube_posts/1.json
  def show
  end

  # GET /youtube_posts/new
  def new
    @youtube_post = YoutubePost.new
  end

  # GET /youtube_posts/1/edit
  def edit
  end

  # POST /youtube_posts
  # POST /youtube_posts.json
  def create
    @youtube_post = YoutubePost.new(youtube_post_params)

    respond_to do |format|
      if @youtube_post.save
        format.html { redirect_to @youtube_post, notice: 'Youtube post was successfully created.' }
        format.json { render :show, status: :created, location: @youtube_post }
      else
        format.html { render :new }
        format.json { render json: @youtube_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /youtube_posts/1
  # PATCH/PUT /youtube_posts/1.json
  def update
    respond_to do |format|
      if @youtube_post.update(youtube_post_params)
        format.html { redirect_to @youtube_post, notice: 'Youtube post was successfully updated.' }
        format.json { render :show, status: :ok, location: @youtube_post }
      else
        format.html { render :edit }
        format.json { render json: @youtube_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /youtube_posts/1
  # DELETE /youtube_posts/1.json
  def destroy
    @youtube_post.destroy
    respond_to do |format|
      format.html { redirect_to youtube_posts_url, notice: 'Youtube post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_youtube_post
      @youtube_post = YoutubePost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def youtube_post_params
      params.require(:youtube_post).permit(:title, :content)
    end
end

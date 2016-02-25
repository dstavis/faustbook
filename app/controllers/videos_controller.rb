class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to root_url
    else
      redirect_to new_video_url
    end
  end

  def show
    @video = Video.find(params[:id])
  end

  private
  def video_params
    params.require(:video).permit(:url)
  end
end

class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  def create
    @video = Video.new(params_for_video)
    if @video.save
      redirect_to root
    else
      redirect_to action: :new
    end
  end

  def show
    @video = Video.find(params[:id])
  end
end

class PagesController < ApplicationController
  def home
    @video = Video.last
    render :template => "videos/show"
  end
end

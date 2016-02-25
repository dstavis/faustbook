class PagesController < ApplicationController
  def home
    @video_url = Video.last.url
  end
end

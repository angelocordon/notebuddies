class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    video = Video.find(params[:id])
    @video = VideoPresenter.new(video)
  end
end

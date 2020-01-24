class WebController < ApplicationController
  before_action :authenticate_user!, only: :profile
  def index
    @albums = Album.all.paginate(page: params[:page], per_page: 30)
  end

  def profile
    @albums = current_user.albums
  end
end

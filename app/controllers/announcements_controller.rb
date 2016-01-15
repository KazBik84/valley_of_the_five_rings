# Announcements act as posts,
# and are main way to announce changes and events on the page.
class AnnouncementsController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  def index
    @announcements = Announcement.all
  end

  def new
    @announcement = Announcement.new
  end

  def create
    @announcement = Announcement.new(announcement_params)
    if @announcement.save
      flash[:success] = 'Post został dodany'
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @announcement = Announcement.find(params[:id])
  end


  private

    def announcement_params
      params.require(:announcement).permit(:title, :message)
    end
end

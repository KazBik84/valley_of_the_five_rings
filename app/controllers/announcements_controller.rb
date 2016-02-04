# Announcements act as posts,
# and are main way to announce changes and events on the page.
class AnnouncementsController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  # 'authorize_resource' is a cancancan before filter that will check
  #  if action can be done by the user.
  authorize_resource except: [:index, :show]
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

  def update
    @announcement = Announcement.find(params[:id])
    if @announcement.update_attributes(announcement_params)
      flash[:success] = 'Post został zaktualizowany'
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    announcement = Announcement.find(params[:id])
    announcement.destroy
    flash[:success] = 'Post został usunięty'
    redirect_to root_path
  end

  def show
    @announcement = Announcement.find(params[:id])
  end

  private

  def announcement_params
    params.require(:announcement).permit(:title, :message)
  end
end

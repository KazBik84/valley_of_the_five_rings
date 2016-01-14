# Announcements act as posts,
# and are main way to announce changes and events on the page.
class AnnouncementsController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  def index
    @announcements = Announcements.all
  end

  def new
    @announcement = Announcement.new
  end
end

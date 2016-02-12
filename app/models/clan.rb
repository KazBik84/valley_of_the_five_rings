class Clan < ActiveRecord::Base
  validates_presence_of :desc, :name, :clan_name
end

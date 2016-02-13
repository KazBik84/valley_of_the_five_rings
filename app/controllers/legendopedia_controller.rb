# This controller will be used to manage all actions
#  related to the hard data from the seed file.
class LegendopediaController < ApplicationController
  def main
    @show_legendopedia_panel = true        
  end

  def show_clan
    @show_legendopedia_panel = true   
    @clan = Clan.find_by(name: params[:clan_name])    
  end
end

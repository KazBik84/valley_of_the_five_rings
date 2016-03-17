# This controller will be used to manage all actions
#  related to the hard data from the seed file.
class LegendopediaController < ApplicationController
  def main
    @show_legendopedia_panel = true        
  end

  def show_clan
    @show_legendopedia_panel = true   
    @clan = Clan.find_by(name: params[:clan_name])   
    @families = @clan.families 
    @schools = @clan.basic_primary_schools + @clan.basic_shugenja_schools + @clan.basic_monk_schools
  end

  def show_spells
    @show_legendopedia_panel = true
    element = SpellElement.find_by( name: params[:element])
    @spells = element.spells
  end

  def show_skills
    @show_legendopedia_panel = true
    sphere = SkillSphere.find_by( name: params[:sphere])
    @skills = sphere.skills
  end

  def list_school_classes(obj)
    obj.school_classes.map { |x| x[:name]}.join(', ')
  end
end

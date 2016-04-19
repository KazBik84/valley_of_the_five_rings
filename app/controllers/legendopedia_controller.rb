# This controller will be used to manage all actions
#  related to the hard data from the seed file.
class LegendopediaController < ApplicationController
  before_filter :show_legendopedia_panel

  def main
  end

  def show_clan
    @clan = Clan.find_by(name: params[:clan_name])
    @families = @clan.families
    @schools = @clan.basic_primary_schools +
               @clan.basic_shugenja_schools
  end

  def show_spells
    element = SpellElement.find_by(name: params[:element])
    @spells = element.spells
  end

  def show_skills
    sphere = SkillSphere.find_by(name: params[:sphere])
    @skills = sphere.skills
  end

  def show_traits
    kind_of_trait = TraitKind.find_by(name: params[:trait_kind])
    @traits = kind_of_trait.traits
  end

  private

  def show_legendopedia_panel
    @show_legendopedia_panel = true
  end
end

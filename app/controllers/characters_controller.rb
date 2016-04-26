class CharactersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @character = Character.new
    @clan = Clan.first
    @families = @clan.families.order(:clan_name)
    @selected_family = @families.first
    @schools = @clan.basic_schools.order(:name)
    @selected_school = @schools.first
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to current_user
    else
      render new
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  # AJAX actions
  def on_clan_change
    @character = Character.new
    @clan = Clan.find(params[:clan_id])
    @families = @clan.families.order(:clan_name)
    @selected_family = @families.first
    @schools = @clan.basic_schools.order(:name)
    @selected_school = @schools.first
    respond_to do |format|
      format.js
    end
  end

  private

  def character_params
    params.require(:character).permit(
      :name, :school_class, :honour, :outfit,
      :char_look, :char_desc, :char_character,
      :public, :stamina, :willpower, :strenght,
      :perception, :agility, :intelligence, :reflex,
      :awareness, :void, :user_id, :clan_id, :family_id)
  end
end

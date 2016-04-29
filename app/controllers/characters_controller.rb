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
    @old_school_bonus = params[:school_bonus]
    @old_family_bonus = params[:family_bonus]
    @selected_school.bonus_attr == @selected_family.bonus_attr ? @increase_val = 4 : @increase_val = 3
    respond_to do |format|
      format.js
    end
  end

  def on_family_change
    @character = Character.new
    @clan = Clan.find(params[:clan_id])    
    @families = @clan.families.order(:clan_name)
    @selected_family = @families.find(params[:family_id])
    @old_family_bonus = params[:family_bonus]
    params[:school_bonus] == @selected_family.bonus_attr ? @increase_val = 4 : @increase_val = 3
    respond_to do |format|
      format.js
    end
  end

  def on_school_change
    @character = Character.new
    @clan = Clan.find(params[:clan_id])
    @schools = @clan.basic_schools.order(:name)
    @selected_school = @schools.find(params[:school_id])
    @old_school_bonus = params[:school_bonus]
    @selected_school.bonus_attr == params[:family_bonus] ? @increase_val = 4 : @increase_val = 3       
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

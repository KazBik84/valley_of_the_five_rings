class CharactersController < ApplicationController
  def index
  end

  def show
    @character = Character.find(params[:id])
    @rings_and_attributes = [
      ['Ogień', @character.intelligence, @character.agility,
       'Inteligencja', 'Zręczność'],
      ['Powietrze', @character.awareness, @character.reflexes,
       'Intuicja', 'Refleks'],
      ['Ziemia', @character.willpower, @character.stamina,
       'Siła Woli', 'Wytrzymałość'],
      ['Woda', @character.perception, @character.strength,
       'Spostrzegawczość', 'Siła'],
      [@character.void]]
  end

  def new
    @character = current_user.characters.new
    @clan = Clan.first
    @families = @clan.families.order(:clan_name)
    @selected_family = @families.first
    @schools = @clan.basic_schools.order(:name)
    @selected_school = @schools.first
    @exp = 45
    # If true it will show remaining exp points
    @exp_points = true
  end

  def create
    @character = current_user.characters.new(character_params)
    if @character.save
      flash[:success] = 'Postać została dodana'
      respond_to do |format|
        format.js
        format.html { redirect_to current_user }
      end
    else
      flash[:alert] = 'Postać nie została dodana'
      @clan = Clan.first
      @families = @clan.families.order(:clan_name)
      @selected_family = @families.first
      @schools = @clan.basic_schools.order(:name)
      @selected_school = @schools.first      
      render :new
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
    @character = current_user.characters.new
    @clan = Clan.find(params[:clan_id])
    @families = @clan.families.order(:clan_name)
    @selected_family = @families.first
    @schools = @clan.basic_schools.order(:name)
    @selected_school = @schools.first
    @selected_school.bonus_attr == @selected_family.bonus_attr ? @increase_val = 4 : @increase_val = 3
    respond_to do |format|
      format.js
    end
  end

  def on_family_or_school_change
    @character = current_user.characters.new
    @clan = Clan.find(params[:clan_id])
    @families = @clan.families.order(:name)
    @selected_family = @families.find(params[:family_id])
    @schools = @clan.basic_schools.order(:name)
    @selected_school = @schools.find(params[:school_id])
    respond_to do |format|
      format.js
    end
  end

  def on_add_skill
    @character = current_user.characters.new
    @skill = Skill.find(params[:skill_id])
    @select_menu_id = params[:select_menu_id]
    @close = params[:close_me]
    @index = params[:index].to_i + 1
  end

  private

  def character_params
    params.require(:character).permit(
      :name, :school_class, :honour, :outfit,
      :char_look, :char_desc, :char_character,
      :public, :stamina, :willpower, :school_rank_ids,
      :perception, :agility, :intelligence,
      :awareness, :void, :user_id, :clan_id, :family_id,
      :school_class, :char_look, :char_desc,
      :char_character, :public, :outfit,
      :basic_school_ids, :reflexes, :strength,
      skill_of_objects_attributes: [:value, :skill_emphasis, :skill_id],
      school_ranks_attributes: [:name, :desc, :rank_lvl])

  end

end

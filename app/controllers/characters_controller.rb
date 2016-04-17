class CharactersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @character = Character.new
    if params[:clan_id]
      @clan = Clan.find(params[:clan_id])
    else
      @clan = Clan.first
    end
    respond_to do |format|
      format.js
      format.html
    end
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

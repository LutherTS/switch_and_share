class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @games = policy_scope(Game)
  end

  def show
    @game = Game.find(params[:id])
    authorize @game
  end

  def new
    @game = Game.new
    @user = User.new
    authorize @game
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user

    if @game.save
      flash[:alert] = "#{@game.name} successfully added."
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
    authorize @game
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    flash[:alert] = "#{@game.name} successfully removed."
    redirect_to games_path, status: :see_other
    authorize @game
  end

  private

  def game_params
    params.require(:game).permit(:name, :category, :condition, :platform, :user_id, photos: [])
    # Really need to specify :user_id rather than just :user.
  end
end

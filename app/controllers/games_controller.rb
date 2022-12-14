class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @games = policy_scope(Game).where("name ILIKE ?", "%#{params[:query]}%")
    else
      @games = policy_scope(Game)
    end
  end
  # So Game.all under Pundit becomes policy_scope(Game)

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
      redirect_to game_path(@game), notice: "#{@game.name} successfully added"
    else
      render :new, status: :unprocessable_entity
    end
    authorize @game
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path, status: :see_other, notice: "#{@game.name} successfully deleted"
    authorize @game
  end

  private

  def game_params
    params.require(:game).permit(:name, :category, :condition, :platform, :user_id, :price_per_week, photos: [])
    # Really need to specify :user_id rather than just :user.
  end
end

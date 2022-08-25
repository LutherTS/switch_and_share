class BookingsController < ApplicationController
  before_action :set_game, only: [:new, :create]

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(
      start_date: Date.today,
      user: current_user,
      game: @game
    )
    if @booking.save
      redirect_to game_path(@game), notice: "#{@game.name} successfully booked !"
    else
      redirect_to game_path(@game), notice: "#{@game.name} can't be booked !"
      # render "games/show", status: :unprocessable_entity
    end
    authorize @booking
  end

  def edit
  end

  def update
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :status, :user_id, :game_id)
  end
end

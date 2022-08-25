class BookingsController < ApplicationController
  before_action :set_game, only: [:new, :create]

  def new
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
    @booking = Booking.find(params[:id])
    @game = Game.find(@booking.game_id)
  end

  # def update
  #   @booking = Booking.find(params[:id])
  #   if current_user == @booking.user
  #     case @booking.status
  #     when "pending" # Uniquement ceux du proprietaire
  #       @booking.ongoing!
  #     when "ongoing"
  #       @booking.returning!
  #     else
  #       #redirect_to dashboard_path
  #     end
  #     # redirect_to dashboard_path(current_user)
  #   else
  #     case @booking.status
  #     when "opened" # Uniquement ceux de l'emprunteur
  #       @booking.pending!
  #     when "returning"
  #       @booking.closed!
  #     else
  #       #redirect_to dashboard_path
  #     end
  #   end
  #   #redirect_to dashboard_path
  #   # if current_user == @game.user && @booking.status == 0
  #   # @booking.status += 1 # -> 1 pending
  #   # @booking.status.pending!
  #   # if current_user == @game.booking && @booking.status == 1
  #   # @booking.status += 1 # -> 2 ongoing
  #   # if current_user == @game.booking && @booking.status == 2
  #   # @booking.status += 1 # -> 3 returning
  #   # if current_user == @game.user && @booking.status == 3
  #   # @booking.status += 1 # -> 4 closed
  # end
  # if current_user == @booking.user
  # if current_user == @game.user
  # Après :
  # Faire changer le texte du bouton update dépendamment de booking.status
  # Désactiver le bouton update si @game.user ou @booking.user n'ont plus à y agir
  # Ou remplacer par un bouton cancel dans les deux camps lorsqu'ils n'ont plus la main
  # Et donc définir cancel, qui est plus ou moins destroy

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :status, :user_id, :game_id)
  end
end

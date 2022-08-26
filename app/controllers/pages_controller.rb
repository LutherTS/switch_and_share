class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user if user_signed_in?
    @bookings_i_made = current_user.bookings
    games_id = current_user.games.pluck(:id)
    @bookings_on_my_games = Booking.where(game_id: games_id)
  end


  def update_status
    @booking = Booking.find(params[:id])
    if current_user == @booking.game.user # Uniquement ceux de l'emprunteur
      case @booking.status
      when "pending"
        @booking.ongoing!
      else
        #redirect_to dashboard_path
      end
    else
      case @booking.status # Uniquement ceux du proprietaire
      when "ongoing"
        @booking.closed!
      else
        #redirect_to dashboard_path
      end
    end
    redirect_to dashboard_path
    # if current_user == @game.user && @booking.status == 0
    # @booking.status += 1 # -> 1 pending
    # @booking.status.pending!
    # if current_user == @game.booking && @booking.status == 1
    # @booking.status += 1 # -> 2 ongoing
    # if current_user == @game.booking && @booking.status == 2
    # @booking.status += 1 # -> 3 returning
    # if current_user == @game.user && @booking.status == 3
    # @booking.status += 1 # -> 4 closed
  end

  def account
    @user = current_user if user_signed_in?
  end

  def booking_canceled!
    @booking = Booking.find(params[:id])
    if current_user == @booking.game.user
      case @booking.status
      when "pending"
        @booking.canceled!
      else
      end
    else
    end
    redirect_to dashboard_path
  end
end

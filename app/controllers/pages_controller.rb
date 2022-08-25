class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user if user_signed_in?
  end

  def update_status
    @booking = Booking.find(params[:id])
    if current_user == @booking.user
      case @booking.status
      when "pending" # Uniquement ceux du proprietaire
        @booking.ongoing!
      when "ongoing"
        @booking.returning!
      else
        #redirect_to dashboard_path
      end
      # redirect_to dashboard_path(current_user)
    else
      case @booking.status
      when "opened" # Uniquement ceux de l'emprunteur
        @booking.pending!
      when "returning"
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
end

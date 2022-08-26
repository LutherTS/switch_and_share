class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :game
  enum status: %i[opened pending ongoing returning closed canceled]

  def color_class
    case status
      when 'pending' then 'booking-pending-color'
      when 'ongoing' then 'booking-ongoing-color'
      when 'closed' then 'booking-closed-color'
      when 'canceled' then 'booking-canceled-color'
    end
  end
end

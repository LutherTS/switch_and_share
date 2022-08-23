class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :game
  enum status: %i[opened pending ongoing returning closed canceled]
end

class Rsvp < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true
  validates :attendees, allow_nil: true, numericality: { only_integer: true }
  # validates :not_attending, allow_nil: true
  # validates :ceremony, presence: true

end

class Rsvp < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true
  validates :attendees, presence: true
  # validates :ceremony, presence: true
  # validates :not_attending, presence: true

end

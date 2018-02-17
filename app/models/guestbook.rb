class Guestbook < ApplicationRecord

  validates :name, presence: true
  validates :post, presence: true

end

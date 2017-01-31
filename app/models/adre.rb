class Adre < ActiveRecord::Base
  has_many :uzytkowniks
  validates :miejscowosc1, length: { maximum: 30 }
  validates :miejscowosc2, length: { maximum: 30 }
end

class Telefon < ActiveRecord::Base
  has_many :uzytkowniks
  validates :numer, length: { maximum: 30 }
end

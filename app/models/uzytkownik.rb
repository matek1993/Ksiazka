class Uzytkownik < ActiveRecord::Base
  belongs_to :adre
  belongs_to :hobby
  belongs_to :telefon
  validates :imie, length: { maximum: 30 }
  validates :nazwisko, length: { maximum: 30 }
end

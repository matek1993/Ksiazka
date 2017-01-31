class Hobby < ActiveRecord::Base
  has_many :uzytkowniks
  validates :nazwa, length: { maximum: 30 }
end

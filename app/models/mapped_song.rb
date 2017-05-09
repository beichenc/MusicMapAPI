class MappedSong < ApplicationRecord

  # belongs_to :user

  validates_presence_of :username, :songname, :artist, :genres, :songimg, :year, :month, :day, :timestamp, :lat, :lng, :uri
end

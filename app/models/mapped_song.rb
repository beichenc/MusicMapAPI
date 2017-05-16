class MappedSong < ApplicationRecord

  # belongs_to :user

  validates_presence_of :username, :displayname, :songname, :artist, :songimg, :year, :month, :day, :unixtime, :lat, :lng, :uri
end

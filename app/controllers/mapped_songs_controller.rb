class MappedSongsController < ApplicationController

  # GET
  def index
    @mapped_songs = MappedSong.all
    json_response(@mapped_songs)
  end

  # POST
  def create
    @mapped_song = MappedSong.create!(mapped_song_params)
    json_response(@mapped_song, :created)
  end

  private
  def mapped_song_params
    params.permit(:username, :displayname, :songname, :artist, :genres, :songimg, :year, :month, :day, :unixtime, :lat, :lng, :uri)
  end

end

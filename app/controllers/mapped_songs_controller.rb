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

  def show
    @mapped_songs = MappedSong.all
    json_response(@mapped_songs)
  end

  def filter
    # @mapped_songs = MappedSong.where(genres.include?(params[:genre]))
    # @mapped_songs=MappedSong.where("genres like ?",params[:genre])
    if params[:username]!="all"
      @mapped_songs_username = MappedSong.where("username = ?", params[:username])
    else
      @mapped_songs_username = MappedSong.all
    end

    @mapped_songs_timeinterval = @mapped_songs_username.where("unixtime > ?", params[:timeinterval])

    if params[:genre] != "all"
      @mapped_songs = Array.new
      for song in @mapped_songs_timeinterval.all
        for genre in song.genres
          if genre.include?(params[:genre])
            @mapped_songs.push(song)
            break
          end
        end
      end
    else
      @mapped_songs = @mapped_songs_timeinterval
      # @mapped_songs = MappedSong.all
    end

    #@mapped_songs = MappedSong.where("genres like ? AND username = ? AND unixtime > ?", "%#{params[:genres]}%", params[:username], params[:timeinterval])
    json_response(@mapped_songs)
  end

  private
  def mapped_song_params
    params.permit(:username, :songname, :artist, :genres, :songimg, :year, :month, :day, :unixtime, :lat, :lng, :uri)
  end



end

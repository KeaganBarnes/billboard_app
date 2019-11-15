class SongsController < ApplicationController
  before_action :set_artist 
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  


  def index
    @songs = @artist.songs
  end

  def show
    @artist.songs
  end
  
  def new
    @song = @artist.songs.new
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to [@artist, @song]
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to [@artist, @song]
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to @artist
  end

  private
  def song_params
    params.require(:song).permit(:name, :genre, :album)
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

end


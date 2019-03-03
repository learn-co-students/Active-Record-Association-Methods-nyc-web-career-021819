class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
  end

  def artists
    self.songs.map do |song|
      song.artist
    end.uniq
  end

  def artist_count
    self.artists.length
  end

  def all_artist_names
    self.artists.map do |artist|
      artist.name
    end
  end
end

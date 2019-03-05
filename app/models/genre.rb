class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def select_songs
    Song.where("genre_id =#{self.id}")
  end

  def song_count
    # return the number of songs in a genre
    # Song.count("genre=#{self}")


    Song.where(genre_id:Genre.find(self.id)).count

  end

  def artist_count
    Song.where(genre_id:Genre.find(self.id)).select('DISTINCT artist_id').count

  end

  def all_artist_names
    Song.where("genre_id =#{self.id}").map do |song|
      song.artist.name
    end.uniq
  end


end

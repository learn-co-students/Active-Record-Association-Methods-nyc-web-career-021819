class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_first_song
    self.songs.first
  end

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    get_first_song.genre
  end

  def song_count
    self.songs.count
    #return the number of songs associated with the artist
  end

  def genre_count
    count = 0
    hash = {}
    self.songs.each do |song|
      if hash[song.genre]
      else
        hash[song.genre] = count
        count += 1
      end 
    end
    count
    #return the number of genres associated with the artist
  end
end

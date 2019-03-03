

hotline_bling = Song.create(:name=>'Hotline Bling')
thriller = Song.create(:name=>'Thriller')
china_cat_sunflower = Song.create(:name=>"China Cat Sunflower")
st_stephen = Song.create(:name=>"St. Stephen")
another_brick_in_the_wall = Song.create(:name=>"Another Brick In The Wall")

drake = Artist.create(:name=>'Drake')
mj = Artist.create(:name=>'Michael Jackson')
grateful_dead = Artist.create(:name=>'Grateful Dead')
pink_floyd = Artist.create(:name=>'Pink Floyd')

rap = Genre.create(:name=>'Rap')
pop = Genre.create(:name=>'Pop')
rock = Genre.create(:name=>'Rock')

hotline_bling.artist = drake
thriller.artist = mj
china_cat_sunflower.artist = grateful_dead
st_stephen.artist = grateful_dead
another_brick_in_the_wall.artist = pink_floyd


drake.songs << hotline_bling
mj.songs << thriller
grateful_dead.songs << china_cat_sunflower
grateful_dead.songs << st_stephen
pink_floyd.songs << another_brick_in_the_wall


pop.songs << thriller
rap.songs << hotline_bling
rock.songs << st_stephen
rock.songs << china_cat_sunflower
rock.songs << another_brick_in_the_wall

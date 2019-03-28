class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
  	Genre.all[0].name
  end

	def drake_made_this
	 	drake = Artist.create(name: "Drake")
	 	Song.all.first.update(artist_id: drake.id)
	  drake
	  #binding.pry
	# when this method is called it should assign the song's artist to Drake
	  end




	#   def drake_made_this
	#  	drake = Artist.create(name: "Drake")
	#  	the_song = Song.find_by(name: "Forever")
	#  	the_song.artist_id = drake.id
	#  	binding.pry
	# # when this method is called it should assign the song's artist to Drake
	#   end
end
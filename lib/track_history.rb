class Song_Tracker

  def initialize 
  @tracklist = []
  end 

  def add (track)
  # adds the track to our tracklist array. Accepts a string 
  fail 'track name must not be empty' unless track.length > 0 
  @tracklist.push(track.strip) unless @tracklist.include?(track.strip)

  end 

  def display 
  @tracklist
  end 

end 
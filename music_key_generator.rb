# Author: Justin Bento
# Date Started: 2024-01-25
# Date Finished: yyyy-mm-dd
# Objective: The script produces a single output: it generates a random musical key that falls within the specified musical scale.
# Purpose: It was created to assist me in staying off the internet while practicing guitar, particularly during my improvisation sessions.
#

class MusicScale
  def initialize(key)
    @key = key
  end
  def signature_key
    music_scale = {
      major_key: ['C', 'G', 'D', 'A', 'E', 'B', 'F#', 'C#', 'F', 'Bb', 'Eb', 'Ab'],
      minor_key: ['Am', 'Em', 'Bm', 'F#m', 'C#m', 'G#m', 'D#m', 'A#m', 'Dm', 'Gm', 'Cm', 'Fm']
    }
    if music_scale[:major_key].include?(@key)
      puts "Your key #{@key} is a major key."
    elsif music_scale[:minor_key].include?(@key)
      puts "Your key #{@key} is a minor key."
    else
      puts "#{@key} is a is not recognized."
    end
  end
end

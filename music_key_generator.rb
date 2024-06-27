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
    all_keys = music_scale[:major_key] + music_scale[:minor_key]
    random_key = all_keys.sample

    if music_scale[:major_key].include?(random_key)
      puts "Your random key is #{random_key}, which is a major key."
    else
      puts "Your random key is #{random_key}, which is a minor key."
    end

  end
end

# Create an instance of the MusicScale class
scale = MusicScale.new('C')

# Call the signature_key method to get a random key
scale.signature_key

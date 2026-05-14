class MusicScale
# Added all attr_readers to replace getter and setter methods.
attr_reader :interval, :scale
  # The initialize method is a constructor that sets up a new instance of the MusicScale class.
  def initialize(interval, scale)
    # - interval: a string representing the name of the musical scale (e.g., "C Major")
    @interval = interval
    # - scale: an array of strings representing the notes in the musical scale
    @scale = scale
  end
end

# Added all major scale notes in the designated sequence.
C_Major = MusicScale.new("C Major", ["C", "D", "E", "F", "G", "A", "B", "C"])
D_Major = MusicScale.new("D Major", ["D", "E", "F#", "G", "A", "B", "C#", "D"])
E_Major = MusicScale.new("E Major", ["E", "F#", "G#", "A", "B", "C#", "D#", "E"])
F_Major = MusicScale.new("F Major", ["F", "G", "A", "Bb", "C", "D", "E", "F"])
G_Major = MusicScale.new("G Major", ["G", "A", "B", "C", "D", "E", "F", "G"])
A_Major = MusicScale.new("G Major", ["A", "B", "C#", "D", "E", "F#", "G#", "A"])
B_Major = MusicScale.new("G Major", ["B", "C#", "D#", "E", "F#", "G#", "A#", "B"])

# Outputs a random notation from the c_major scale.
puts C_Major.scale.sample

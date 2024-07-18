class MusicScale
  attr_reader :interval, :scale
  def initialize(interval, scale)
    @interval = interval
    @scale = scale
  end
end

C_Major = MusicScale.new("C Major", ["C", "D", "E", "F", "G", "A", "B", "C"])
D_Major = MusicScale.new("D Major", ["D", "E", "F#", "G", "A", "B", "C#", "D"])
E_Major = MusicScale.new("E Major", ["E", "F#", "G#", "A", "B", "C#", "D#", "E"])

puts C_Major.scale.sample

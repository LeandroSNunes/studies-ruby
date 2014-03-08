class Music
  def initialize
    @playing = false
  end
  
  def play
    @playing = true
    def stop
      @playing = false
    end
  end

  def playing?
    @playing
  end
  
end

billie_jean = Music.new
puts billie_jean.respond_to? :stop

billie_jean.play
puts billie_jean.playing?

billie_jean.stop
puts billie_jean.playing?

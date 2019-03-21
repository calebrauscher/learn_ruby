class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def seconds=(sec)
    @seconds = sec
  end

  def padded(sec)
    sec < 10 ? "0#{sec}" : "#{sec}"
  end

  def time_string
    sec = @seconds % 60
    min = @seconds / 60 % 60
    hour = @seconds / 3600 % 60

    "#{padded(hour)}:#{padded(min)}:#{padded(sec)}"
  end


end

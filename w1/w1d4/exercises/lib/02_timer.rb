class Timer
  attr_accessor :seconds
  def initialize(seconds = 0)
    @seconds = seconds
  end
  #
  def formatted(num)
    num > 9 ? "#{num}": "0#{num}"
  end

  def time_string
    hours = (seconds / 3600).to_i
    minutes = ((seconds % 3600) / 60).to_i
    secs = (seconds % 60)
    "#{formatted(hours)}:#{formatted(minutes)}:#{formatted(secs)}"
  end
end
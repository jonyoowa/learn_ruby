class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    string_hours = "%02d" % (@seconds / 3600)
    string_remainder = @seconds % 3600
    string_minutes = "%02d" % (string_remainder / 60)
    string_seconds = "%02d" % (string_remainder % 60)

    string_hours + ":" + string_minutes + ":" + string_seconds
  end
end

MINUTES_PER_HOUR = 60

HOURS_IN_DAY = 24

MINUTES_IN_DAY = MINUTES_PER_HOUR * HOURS_IN_DAY
# MINUTES_IN_DAY == 1440

def normalizer_0_1439(minutes)
  minutes += MINUTES_IN_DAY if minutes.negative?
  minutes % MINUTES_IN_DAY
end

def after_midnight(string)
  hours, min = string.split(':')
  (MINUTES_PER_HOUR * hours.to_i + min.to_i) % MINUTES_IN_DAY
end

def before_midnight(string)
  hours, min = string.split(':')
  away_from_midnight = (MINUTES_PER_HOUR * hours.to_i + min.to_i) % MINUTES_IN_DAY
  return MINUTES_IN_DAY % away_from_midnight if hours.to_i != 0 && min.to_i != 0

  away_from_midnight % MINUTES_IN_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

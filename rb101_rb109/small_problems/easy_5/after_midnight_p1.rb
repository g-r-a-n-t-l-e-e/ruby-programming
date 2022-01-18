MINUTES_PER_HOUR = 60

HOURS_IN_DAY = 24

MINUTES_IN_DAY = MINUTES_PER_HOUR * HOURS_IN_DAY

def normalizer_0_1439(minutes)
  if minutes < 0
    minutes += MINUTES_IN_DAY
  end

  minutes % MINUTES_IN_DAY
end


def time_of_day(delta_minutes)
  delta_minutes = normalizer_0_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
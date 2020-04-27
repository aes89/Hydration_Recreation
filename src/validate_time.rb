# frozen_string_literal: true

class InvalidInput < StandardError
end

class FloatNotInt < StandardError
end

def validate_time(time)
  time = time.strip
  unless %w[breakfast lunch dinner].include?(time)
    raise InvalidInput, "Invalid time, please choose 'breakfast', 'lunch' or 'dinner'"
  end

  time
end

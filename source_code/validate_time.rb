class InvalidInput < StandardError
end

class FloatNotInt < StandardError
end

def validate_time(time)
    time = time.strip
    raise InvalidInput, "Invalid time, please choose breakfast, lunch or dinner" unless ['breakfast', 'lunch', 'dinner'].include?(time)
    time
end

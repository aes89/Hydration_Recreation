# frozen_string_literal: true

class InvalidInput < StandardError
end

class FloatNotInt < StandardError
end

def validate_name(name)
  name = name.strip
  raise InvalidInput, "That's not a name pal, try some letters." if name.empty?

  name
end

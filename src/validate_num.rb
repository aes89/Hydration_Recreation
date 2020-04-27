# frozen_string_literal: true

class InvalidInput < StandardError
end

class FloatNotInt < StandardError
end

def validate_num(num)
  if num.empty?
    raise InvalidInput, 'You can do better than that, we need some numbers here.'
    end
  raise InvalidInput, 'Only numbers, thanks.' if (num.to_i == 0) && (num != '0')
  if (num.to_f % 1) != 0
    raise FloatNotInt, "We're not splitting hairs here. Only whole numbers thanks."
  end

  num.to_i
end

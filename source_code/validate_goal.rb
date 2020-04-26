class InvalidInput < StandardError
end

class FloatNotInt < StandardError
end

def validate_num(num)
    raise InvalidInput, "You can do better than that, we need some numbers here." if num.empty?
    raise InvalidInput, "Only numbers, thanks." if num.to_i == 0 and num != "0"
    raise FloatNotInt, "We're not splitting hairs here. Only whole numbers thanks." if (num.to_f % 1) != 0
    num.to_i
end
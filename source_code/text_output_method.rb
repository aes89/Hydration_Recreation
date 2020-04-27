#** TEXT LETTER BY LETTER

def slowly
    yield.each_char { |c| putc c; $stdout.flush; sleep 0.001 }
end
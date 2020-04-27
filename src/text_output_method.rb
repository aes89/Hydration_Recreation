# frozen_string_literal: true

# ** TEXT LETTER BY LETTER

def slowly
  yield.each_char { |c| putc c; $stdout.flush; sleep 0.02 }
end

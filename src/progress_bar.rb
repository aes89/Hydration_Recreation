# frozen_string_literal: true

require 'tty-progressbar'

# ** PROGRESS BAR ANIMATION

bar = TTY::ProgressBar.new('calculating [:bar]', total: 30)
30.times do
  sleep(0.1)
  bar.advance(1)
end

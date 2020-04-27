require 'artii'

def welcome_image
    a = Artii::Base.new :font => 'slant'
    puts a.asciify('Welcome to:')

    a = Artii::Base.new :font => 'slant'
    puts a.asciify('Hydration Recreation!')
end

require 'artii'

def hydration_achieved
    a = Artii::Base.new :font => 'slant'
    puts a.asciify('HYDRATION ACHIEVED!')
end


# def slowly
#     yield.each_char { |c| putc c; $stdout.flush; sleep 0.1 }
#   end
# slowly do
#     "input"
# end
  
  
require 'artii'

def welcome_image
    a = Artii::Base.new :font => 'slant'
    puts a.asciify('Welcome to:')

    a = Artii::Base.new :font => 'slant'
    puts a.asciify('Hydration Recreation!')
end


def hydration_achieved
    a = Artii::Base.new :font => 'slant'
    puts a.asciify('HYDRATION ACHIEVED!')
end


def hydration_imminent
    a = Artii::Base.new :font => 'slant'
    puts a.asciify('HYDRATION IMMINENT!')
end



  
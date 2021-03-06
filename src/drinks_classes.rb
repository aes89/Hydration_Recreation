# frozen_string_literal: true

require 'tty-link' # ** Gem
require 'rainbow' # ** Gem
require_relative 'text_output_method'

class DrinkPoints
  def initialize(_amount, breakfastpoints, lunchpoints, dinnerpoints, breakfastMessage, lunchMessage, dinnerMessage)
    @breakfastpoints = breakfastpoints
    @lunchpoints = lunchpoints
    @dinnerpoints = dinnerpoints
    @breakfastMessage = breakfastMessage
    @lunchMessage = lunchMessage
    @dinnerMessage = dinnerMessage
  end

  def breakfast
    if @amount == 0
      @amount * @breakfastpoints
    elsif @amount >= 1
      puts @breakfastMessage
      @amount * @breakfastpoints
    end
  end

  def lunch
    if @amount == 0
      @amount * @lunchpoints
    else
      puts @lunchMessage
      @amount * @lunchpoints
    end
  end

  def dinner
    if @amount == 0
      @amount * @dinnerpoints
    elsif @amount >= 1
      puts @dinnerMessage
      @amount * @dinnerpoints
    end
  end
end

class WaterPoints < DrinkPoints
  def initialize(amount)
    super @amount = amount, @breakfastpoints = 125, @lunchpoints = 125, @dinnerpoints = 125, @breakfastMessage, @lunchMessage, @dinnerMessage
  end

  def permanent
    puts Rainbow('Water is always a great idea!').blue
    @breakfastpoints * @amount
  end
end

class JuicePoints < DrinkPoints
  def initialize(amount)
    super @amount = amount, @breakfastpoints = 110, @lunchpoints = 90, @dinnerpoints = 70, @breakfastMessage = Rainbow('Juice is optimal morning drink!').orange, @lunchMessage = Rainbow("Ok. But. You're not in kingergarten, are you?").orange, @dinnerMessage = Rainbow("Ok. But. You're not in kingergarten, are you?").orange
  end
end

class CaffinatedPoints < DrinkPoints
  def initialize(amount)
    super @amount = amount, @breakfastpoints = 100, @lunchpoints = 50, @dinnerpoints = -10, @breakfastMessage = "Up and at 'em!", @lunchMessage = "Not ideal, but I'll let it slide", @dinnerMessage = 'Uh oh, looks like you lost points here. Good luck sleeping tonight.'
  end
end

class AlcoholicPoints < DrinkPoints
  def initialize(amount)
    super @amount = amount, @breakfastpoints = -50, @lunchpoints = 20, @dinnerpoints = 50, @breakfastMessage = Rainbow("In the morning? Maybe visit this site: #{TTY::Link.link_to('Alcoholics Anonymous', 'https://aa.org.au/')}").green.to_s, @lunchMessage = Rainbow("Not ideal, but I'll let it slide").green.to_s, @dinnerMessage = Rainbow('Not needed but preferable in the evening.').green.to_s
  end
end

class SodaPoints < DrinkPoints
  def initialize(amount)
    super @amount = amount, @breakfastpoints = -10, @lunchpoints = 50, @dinnerpoints = 50, @breakfastMessage = 'In the morning? Give 10 points back. Sheesh.', @lunchMessage = "Not ideal, but I'll let it slide", @dinnerMessage = "Not ideal, but I'll let it slide"
  end
end

class OtherPoints < DrinkPoints
  def initialize(amount)
    super @breakfastpoints = 80, @lunchpoints = 80, @dinnerpoints = 80, @amount = amount, @breakfastMessage = 'Not sure what this was, you can have some points.', @lunchMessage = 'Not sure what this was, you can have some points.', @dinnerMessage = 'Not sure what this was, you can have some points.'
  end
end


# card.rb
require 'pry'

class Card
  attr_reader :value, :suit
  @@suites = [:hearts, :spades, :clubs, :diamonds]
  def initialize(value, suit)
    @value = value
    @suit = suit
    card_values(@value, @suit)

  end

  def to_s
    case @value
    when 1
      return "Ace of #{suit.to_s}"
    when 11
      return "Jack of #{suit.to_s}"
    when 12
      return "Queen of #{suit.to_s}"
    when 13
      return "King of #{suit.to_s}"
    end
    return "#{value} of #{suit.to_s}"
  end

  def card_values(num, suite)
    if num > 13 || num <= 0
      raise ArgumentError
    end

    unless @@suites.include? suite
      raise ArgumentError
    end

  end

  def value
    return @value
  end

  def suit
    return @suit
  end

end

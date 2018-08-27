
# card.rb

class Card
  attr_reader :value, :suit
  @@suites = [:hearts, :spades, :clubs, :diamonds]
  def initialize(value, suit)
    @value = value
    @suit = suit
    card_values(@value, @suit)

  end

  def to_s
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

end

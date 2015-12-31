module Craps
  class Bet
    class InvalidBetError < StandardError; end

    attr_reader :amount

    def initialize(amount, player_guid)
      @amount = amount
      @player_guid = player_guid
    end

    def player
      @player_guid
    end

    def add_amount(value)
      raise InvalidBetError if @amount + value < 0
      @amount += value
    end
  end
end

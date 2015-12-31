module Craps
  class Bet

    attr_reader :amount

    def initialize(amount, player_guid)
      @amount = amount
      @player_guid = player_guid
    end

    def player
      @player_guid
    end
  end
end

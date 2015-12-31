module Craps
  module Sections
    class PlaceBet

      attr_reader :value, :payout

      def initialize(value, payout = 9.to_f/5)
        @value = value
        @payout = payout
      end
    end
  end
end

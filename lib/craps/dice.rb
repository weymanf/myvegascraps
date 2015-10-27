module Craps
  class Dice

    def value
      @value ||= 0
    end

    def roll
      @value = Kernel.rand(1..6)
    end
  end
end

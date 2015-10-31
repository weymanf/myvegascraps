require 'securerandom'

module Craps
  class Player

    attr_reader :name, :uuid, :wallet

    def initialize(name: name, money: 0)
      @name = name
      @uuid = SecureRandom.uuid
      @wallet = money
    end

    def rename(new_name)
      @name = new_name
    end

    def add_funds(money)
      @wallet += money
    end

    def spend_funds(money)
      @wallet -= money unless money > wallet
    end
  end
end

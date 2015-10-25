require 'rspec'
require_relative '../lib/craps/dice'

describe Craps::Dice do
  subject(:dice) { described_class.new }

  describe '#value' do
    it 'returns the integer value of the dice' do
      expect(dice.value).to be_a(Integer)
    end
  end
  describe '#roll' do
    it 'changes the value of the dice between 1-6' do
      expect(Kernel).to receive(:rand)
    end
  end
end

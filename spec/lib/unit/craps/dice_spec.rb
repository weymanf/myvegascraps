require_relative '../../../spec_helper'
require_relative '../../../../lib/craps/dice'

module Craps
  describe Dice do
    subject(:dice) { described_class.new }

    describe '#value' do
      it 'returns the integer value of the dice' do
        expect(dice.value).to be_a(Integer)
      end
    end

    describe '#roll' do
      it 'returns the value of the dice between 1-6' do
        expect(Kernel).to receive(:rand).and_return(1)

        expect(dice.roll).to eq 1
      end

      it 'changes the value of the dice' do
        expect(Kernel).to receive(:rand).and_return(5)

        dice.roll

        expect(dice.value).to eq(5)
      end
    end
  end
end

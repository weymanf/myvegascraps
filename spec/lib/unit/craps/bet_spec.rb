require_relative '../../../spec_helper'
require_relative '../../../../lib/craps/bet'

describe Craps::Bet do
  subject(:bet) { described_class.new(amount, player_guid) }
  let(:amount) { 10 }
  let(:player_guid) { 'random-guid' }

  describe '#amount' do
    it 'returns the amount of the bet' do
      expect(bet.amount).to eq amount
    end
  end

  describe '#player' do
    it 'returns the guid of the player' do
      expect(bet.player).to eq player_guid
    end
  end

  describe '#add_amount' do
    let(:more_money) { 100 }

    it 'adds value to the amount' do
      bet.add_amount(more_money)
      expect(bet.amount).to eq(amount + more_money)
    end

    context 'when adding a negative value' do
      let(:negative_money) { -5 }

      it 'decreases the value of the amount' do
        bet.add_amount(negative_money)
        expect(bet.amount).to eq(amount + negative_money)
      end

      context 'decreaseing more value than the bet' do
        let(:negative_money) { -5000 }

        it 'raises an Invalide Bet error' do
          expect {
            bet.add_amount(negative_money)
          }.to raise_error(Craps::Bet::InvalidBetError)
        end
      end
    end
  end
end

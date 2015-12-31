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
end

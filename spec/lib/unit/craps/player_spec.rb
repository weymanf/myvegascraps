require_relative '../../../spec_helper'
require_relative '../../../../lib/craps/player'

describe Craps::Player do
  let(:name) { 'Yugioh' }
  let(:uuid) { SecureRandom.uuid }
  subject(:player) { described_class.new(name: name) }

  describe '.uuid' do
    it 'returns the players unique identification' do
      expect(SecureRandom).to receive(:uuid).and_return uuid

      expect(player.uuid).to eq uuid
    end
  end

  describe '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq name
    end
  end

  describe '#rename' do
    let(:new_name) { 'Kaiba' }

    it "changes the player's name" do
      player.rename(new_name)

      expect(player.name).to eq new_name
    end
  end

  describe '#wallet' do
    let(:money) { 200 }
    let(:rich_player) do
      described_class.new(name: 'dont_matter', money: money)
    end

    it 'holds the money of the player' do
      expect(rich_player.wallet).to eq(money)
    end
  end

  describe '#add_funds' do
    let(:money) { 5 }
    let(:broke_player) do
      described_class.new(name: 'dont_matter', money: money)
    end
    let(:paycheck) { 200 }

    it 'increases the monetary value in the wallet' do
      expect {
        broke_player.add_funds(paycheck)
      }.to change(broke_player, :wallet).by(paycheck)
    end
  end

  describe '#spend_funds' do
    let(:money) { 2000 }
    let(:addicted_player) do
      described_class.new(name: 'dont_matter', money: money)
    end
    let(:bets) { 1500 }

    it 'decreases the monetary value in the wallet' do
      expect {
        addicted_player.spend_funds(bets)
      }.to change(addicted_player, :wallet).by(-1 * bets)
    end

    context 'player has inssuffecient funds' do
      let(:money) { 1000 }

      it 'does not try to decrease the value in the wallet' do
        expect {
          addicted_player.spend_funds(bets)
        }.to_not change(addicted_player, :wallet)
      end
    end
  end
end

require_relative '../../../../spec_helper'
require_relative '../../../../../lib/craps/sections/place_bet'

describe Craps::Sections::PlaceBet do

  subject(:place_bet) { described_class.new(value) }
  let(:value) { 6 }

  context 'with different a payout rule' do
    let(:payout) { 9/5 }

    it 'can be initialized with different a payout rule' do
      expect(described_class.new(value, payout)).to be
    end
  end

  describe '#value' do
    it 'returns the value of the place bet' do
      expect(place_bet.value).to eq value
    end
  end

  describe '#set_place_bet' do
    let (:place_bet) do
    end

    it 'sets a place bet ' do
    end
  end
end

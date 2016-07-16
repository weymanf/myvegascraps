require_relative '../../../../spec_helper'
require_relative '../../../../../lib/craps/sections/place_bets'

describe Craps::Sections::PlaceBets do
  it 'should new up the proper place bets' do
    described_class.new
  end
end

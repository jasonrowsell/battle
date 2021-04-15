# frozen_string_literal: true

require 'player'

describe Player do
  let(:subject) { described_class.new('Player 1') }

  describe '#name' do
    it 'returns the name of the player' do
      expect(subject.name).to eq 'Player 1'
    end
  end
end

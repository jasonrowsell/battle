# frozen_string_literal: true

require 'player'

describe Player do
  let(:subject) { described_class.new('Player 1') }
  let(:player) { instance_double(Player, receive_damage: nil) }

  describe '#name' do
    it 'returns the name of the player' do
      expect(subject.name).to eq 'Player 1'
    end
  end

  describe '#hp' do
    it 'returns the player hp' do
      expect(subject.hp).to be 60
    end
  end

  describe '#receive_damage' do
    it 'reduces hp by default value' do
      expect { subject.receive_damage }.to change { subject.hp }.by(-10)
    end
  end
end

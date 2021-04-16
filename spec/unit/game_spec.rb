# frozen_string_literal: true

require 'game'

describe Game do
  let(:player1) { instance_double(Player, receive_damage: nil, name: 'Player 1') }
  let(:player2) { instance_double(Player, receive_damage: nil, name: 'Player 2') }
  subject { described_class.new(player1, player2) }

  describe '#player1' do
    it 'returns the first player' do
      expect(subject.player1).to be player1
    end
  end

  describe '#player2' do
    it 'returns the second player' do
      expect(subject.player2).to be player2
    end
  end

  describe '#current_player' do
    it 'returns the current player' do
      expect(subject.current_player).to be player1
    end
  end

  describe '#target_player' do
    it 'returns the target player' do
      expect(subject.target_player).to be player2
    end
  end

  describe '#attack' do
    it 'reduces hp of opponent' do
      expect(player2).to receive :receive_damage
      subject.attack(player2)
    end
  end

  describe '#switch_turns' do
    it 'changes the assigned current player' do
      subject.switch_turns
      expect(subject.current_player).to be player2
    end

    it 'assigns current player to original after 2 turns' do
      2.times { subject.switch_turns }
      expect(subject.current_player).to be player1
    end

    it 'changes the assigned target player' do
      subject.switch_turns
      expect(subject.target_player).to be player1
    end

    it 'assigns target player to original after 2 turns' do
      2.times { subject.switch_turns }
      expect(subject.target_player).to be player2
    end
  end
end

  
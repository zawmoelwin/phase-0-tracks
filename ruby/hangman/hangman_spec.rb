require_relative 'hangman'

describe Game do
  let(:game) { Game.new('apple') }

  it "displays underscores display word" do
    expect(game.display_word).to eq [" _"," _"," _"," _"," _"]
  end

 

  it "checks if input letter is found in word" do
    game.include_check('p')
    expect(game.display_word).to eq [" _","p","p"," _"," _"]
    expect(game.guessed_letters).to include "p"
    expect(game.letter_check('p')).to be false
  end
  
  # it "check if the input is letter or already guessed" do
  #   expect(game.letter_check('p')).to be false
  # end

  it "check if the game is gamed" do
    expect(game.is_gamed()).to be false
  end

end
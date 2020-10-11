require "rspec/autorun"

class Challenge
  def first_letter_not_repeated(word)
    # Do the challenge here
  end
end

# Do not change here
describe Challenge, ".first_letter_not_repeated" do
  let(:challenge) { Challenge.new }

  it "it returns first letter that non repeat" do
    expect(challenge.first_letter_not_repeated('stress')).to eq('t')
  end

  it "it returns first letter with space around" do
    expect(challenge.first_letter_not_repeated(' stress ')).to eq('t')
  end

  it "it returns first letter on case insensive" do
    expect(challenge.first_letter_not_repeated('sTreSS')).to eq('T')
  end

  it "it returns empty string if all letters repeat" do
    expect(challenge.first_letter_not_repeated('ssttrreess')).to eq('')
  end

  it "it returns empty for empty string" do
    expect(challenge.first_letter_not_repeated('')).to eq('')
  end
end

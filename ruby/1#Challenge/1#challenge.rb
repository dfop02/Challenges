require "rspec/autorun"

class Challenge
  def first_string(string)
    # Do the challenge here
  end
end

# Do not change here
describe Challenge, ".first_string" do
  it "it returns first letter that non repeat" do
    expect('stress').to eq('t')
  end

  it "it returns first letter on case insensive" do
    expect('sTreSS').to eq('T')
  end

  it "it returns empty string" do
    expect('ssttrress').to eq('')
  end
end

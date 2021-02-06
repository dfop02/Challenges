require "rspec/autorun"

class Challenge
  def first_letter_not_repeated(word)
    word.each_char do |letter|
      return letter if word.downcase.count(letter.downcase) == 1
    end
    ''
=begin
    todos_elementos =   word.downcase.split("")
    elementos_unicos = todos_elementos.uniq

    elementos_unicos.each.with_index do |letra, index|
      if letra != " "
        if todos_elementos.count(letra) == 1
          return word[todos_elementos.index(letra)]
        end
      end
      
      if index == elementos_unicos.length - 1
        return ""
      end    
    end
=end
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

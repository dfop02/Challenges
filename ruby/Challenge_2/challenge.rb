require "rspec/autorun"

class Challenge
  def convert_tag(word)
    # Do the challenge here
    # Verificando conformidade com #
    if word != ""
      word.strip!  

      if word.match(/^[#]{1,6}\s/) != nil
          texto = word.match(/\w+/)[0] 
          hirarquia = word.match(/^[#]{1,6}/)[0].length
          return "<h#{hirarquia}>#{texto}</h#{hirarquia}>"
      end
      return "Wrong input"
    
    else
      return ""  
    end
  end
end

# Do not change here
describe Challenge, ".convert_tag" do
  let(:challenge) { Challenge.new }

  it "it returns correct tag h3" do
    expect(challenge.convert_tag('### The World can be awesome')).to
    eq('<h3>The world can be awesome</h3>')
  end

  it "it returns correct tag h6" do
    expect(challenge.convert_tag('###### A new beguinning for the turtles')).to
    eq('<h6>A new beguinning for the turtles</h6>')
  end

  it "it returns wrong input for 7 hashtags" do
    expect(challenge.convert_tag('####### Soccer is one of the most popular sports')).to
    eq('Wrong input')
  end

  it "it returns wrong input for space ahead hashtags" do
    expect(challenge.convert_tag(' ##### Surf Champtions is comming to Los Angeles this year!')).to
    eq('Wrong input')
  end

  it "it returns wrong input for forgot space after hashtags" do
    expect(challenge.convert_tag('#####Rumor points that apple will launch a new iphone this week.')).to
    eq('Wrong input')
  end

  it "it returns wrong input for invalid characters between hashtags" do
    expect(challenge.convert_tag('###g## Next year we\'ll have a new Batman movie.')).to
    eq('Wrong input')
  end

  it "it returns empty if has hashtag but no text" do
    expect(challenge.convert_tag('##  ')).to eq('')
  end

  it "it returns empty if string is empty" do
    expect(challenge.convert_tag('')).to eq('')
  end

  it "it returns correct tag h4 with hashtags on text" do
    expect(challenge.convert_tag('#### ## Warning: Security on Internet')).to
    eq('<h4>## The world can be awesome</h4>')
  end

  it "it returns correct tag h1 without spaces around text" do
    expect(challenge.convert_tag('####    Study about space is always wonderful ')).to
    eq('<h4>Study about space is always wonderful</h4>')
  end
end

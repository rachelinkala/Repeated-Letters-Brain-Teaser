class Letters
  attr_accessor :input, :input2
  def initialize(input, input2)
    @input = input
    @input2 = input2
    menu
  end

  def menu
    puts 'Type a word or type 1 to exit'
    @input = gets.to_i.strip
    user_input
  end

  def user_input
    if '1'
      'Goodbye'
    else 
      'Type another word.'
     @input2 = gets.strip 
     compare
    end
  end

  def compare(input, input2)
    word1 = input.chars.count { |char| string.count(char) > 1 }
    word2 = input2.chars.count { |char| string.count(char) > 1 }

    if word1 && word2 === 0 
      puts 'No words with repeated letters'

    elsif word1 > word2 
      puts input 'has the most repeated letters'
    
    elsif word1 < word2 
      puts input2 'has the most repeasted letters'
  
    else word1 === word2
      puts 'Equal amount of repeated letters'
    end
  end
end


Letters.new


def word_calc(phrase)
  symbol_words = {"plus" => :+, "sum" => :+, "minus" => :-, "times" => :*, "divided" => :/, "power" => :**}

  phrase_split = phrase.split(" ")
  numbers = phrase.scan(/\d/).map! {| number| number.to_f}

  current_symbol = 0
  phrase_split.each do |i|
    if symbol_words[i]
      current_symbol = symbol_words[i]
    end
  end

  numbers.inject(current_symbol)

end

def multiple_calc(sentence)
  question_split = sentence.split(/\W\s/)

  question_split.map! {|x| word_calc(x)}
end

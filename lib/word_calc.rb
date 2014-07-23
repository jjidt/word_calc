def word_calc(phrase)
  symbol_words = {"plus" => :+, "sum" => :+, "minus" => :-, "times" => :*, "divided" => :/, "power" => :**}
  phrase_split = phrase.split(" ").map! {|i| i.gsub(/\W/, "")}
  current_symbol = 0
  array = []
  phrase_split.each do |x|
    if x.to_i.to_s == x
      array.push(x)
    elsif symbol_words[x]
      array.push(symbol_words[x])
    end
  end
  eval(array.join(""))
end

def multiple_calc(sentence)
  question_split = sentence.split(/\W\s/)
  question_split.map! {|x| word_calc(x)}
end

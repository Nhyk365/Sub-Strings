def substrings(word, dictionary)
  temp_dictionary = []
  dictionary.each do |dictWord|
    temp_word = word.dup.downcase
    while temp_word.include?(dictWord)
      temp_dictionary.push(dictWord)
      temp_word.slice!(dictWord)
    end
  end
  result = temp_dictionary.reduce(Hash.new(0)) do |result, word|
    result[word] += 1
    result
  end
  p result
end

user_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", user_dictionary)

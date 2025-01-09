def substrings(word, dictionary)
    downcased_word = word.downcase
    result = Hash.new(0)

    dictionary.each do |substring|
      downcased_substring = substring.downcase
      occurrences = downcased_word.scan(downcased_substring).count

      result[substring] += occurrences if occurrences > 0

    end

  result
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, diction)
  hash = Hash.new(0)
  sentence = text.split
  diction.each do |word| 
    count = sentence.count(word)
    hash[word] += count if count > 0
    end
  end
  puts hash
end

substrings("how is it going", dictionary)
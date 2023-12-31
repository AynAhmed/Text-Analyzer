 # Read text from a file
def read_text_from_file(filename)
    File.read(filename)
end
$file = read_text_from_file("sample.txt")

# function counts the number of words

def counts_By_Words(text)
  text.split.length
end


puts "Number of words: #{counts_By_Words($file)}"


puts "---------------------------------"

# function counts the number of characters
def count_characters(text)
    text = text.gsub(/\s+/, '')  # Remove all whitespace characters (spaces, tabs, newlines, etc.)
    text.length
end

# charCount = count_characters($file)

puts "Number of characters: #{count_characters($file)}"


puts "---------------------------------"

# Function to count the number of paragraphs
def count_paragraphs(text)
    # Split the text into paragraphs using one or more consecutive empty lines as the separator
    paragraphs = text.split(/\n\s*\n+/)
    paragraphs.length
  end

  paragraph_count = count_paragraphs($file)

  puts "Number of paragraphs: #{paragraph_count}"


puts "---------------------------------"


#Identify the most common word in the document and display it along with its frequency

#allows you to spilt and iterate through the words using a loop or iterator
words = $file.split

# Iterate through the words and count
wordfrequency = Hash.new(0)

words.each do |word|
  if wordfrequency[word]
      wordfrequency[word]+=1
  end

end

puts "---------------------------------"

# Find the most common word and its frequency
mostCommon = wordfrequency.max_by { |word, count| count 
#The max_by method will return the entire key-value pair as a two-element array.
}
puts "The most common word: '#{mostCommon[0]}'\nFrequency: #{mostCommon[1]}"

puts "---------------------------------"

#Provide word frequency statistics?

commonArr = wordfrequency.sort_by {|word,count| count}.reverse

commonArr[0...10].each do |word, count|
    puts "Word: '#{word}' Frequency: #{count}"
  end

puts "---------------------------------"

# refactoring choices and any additional features you implemented
#Initialized the wordfrequency hash using Hash.new(0) to set the default value for missing keys to 0.
#After counting the frequencies, a loop is used to print each word and its count. for user readability 
#In the loop, for each word encountered, it increments count in the wordfrequency hash using +=. 
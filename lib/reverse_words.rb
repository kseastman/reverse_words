require 'pry'
# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return my_words if my_words == nil || my_words.length == 0

  index_array = []
  index = -1

  while index = my_words.index(" ", index + 1)
    index_array << index
  end

  if index_array.length == 0
    length = 1
  else
    length = index_array.length
  end

  start_index = 0

  length.times do |i|
    unless start_index == 0
      start_index = index_array[i - 1]
    end
    end_index = index_array[i] - 1

    while start_index < end_index
      temp_storage = my_words[start_index]
      my_words[start_index] = my_words[end_index]
      my_words[end_index] = temp_storage
      start_index += 1
      end_index -= 1
    end

    i += 1
  end
  return my_words
end

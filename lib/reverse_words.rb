require 'pry'
# A method to reverse each word in a sentence, in place.


def reverse_words(my_words)
  return nil if my_words == nil
  return my_words if my_words.length == 1

  index = 0

  while index < my_words.length
    while my_words[index] == " "
      index += 1
    end

    inner_index = index

    while my_words[inner_index] != " " && inner_index < my_words.length - 1
      inner_index += 1
    end

    begin_index = index
  end_index = inner_index

    while begin_index < end_index
      while my_words[begin_index] == " "
        begin_index += 1
      end

      while my_words[end_index] == " "
      end_index -= 1
      end

      temp = my_words[begin_index]
      my_words[begin_index] = my_words[end_index]
      my_words[end_index] = temp
      begin_index += 1
    end_index -= 1
    end
    index = inner_index + 1
  end
  return my_words
end

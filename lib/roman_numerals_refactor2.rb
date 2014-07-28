def roman_numerals(input)

  library = {1000 => 'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X', 5 => 'V', 1 => 'I'}
  temp_number_string = ""
  roman_unsorted = []
  test_array = ['M', 'D', 'C', 'L', 'X', 'V', 'I']

  library.each do |arabic, roman|

    while input > 0 && arabic <= input
      if arabic <= input
        temp_number_string += roman
        input -= arabic
      end
    end
    roman_unsorted.push(temp_number_string)
    temp_number_string = ""
  end

  roman_unsorted.each_with_index do |element, index|
    if element.length == 4
      current_letter = element.slice(0,1)
      previous_letter = test_array[test_array.index(current_letter)-1]
      if roman_unsorted[index-1] == ""
        roman_unsorted[index] = current_letter + previous_letter
      else
        roman_unsorted[index] = current_letter + test_array[test_array.index(current_letter)-2]
        roman_unsorted[index-1] = ""
      end
    end
  end

  return roman_unsorted.join

end

# roman_numerals(3999)

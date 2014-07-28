def roman_numerals(input)

  library = [[1000,"M"],[500,"D"],[100,"C"],[50,"L"],[10,"X"],[5,"V"],[1,"I"]]

  temp_roman = ""
  prev_roman = ""
  result = ""

  library.each_with_index do |library_element,index|
    temp_roman = ""
    arabic = library_element[0]
    roman = library_element[1]
    while input > 0 and arabic <= input
      if arabic <= input
        temp_roman = temp_roman + roman
      end
      input -= arabic
    end

    prev_result = result.slice(result.length-1,1)

    if prev_result == prev_roman && temp_roman.length == 4 &&
       (prev_result == "D" || prev_result == "L" || prev_result == "V")
      result.slice!(result.length-1,1)
      temp_roman = temp_roman.slice(0,1) + library[index-2][1]
    elsif temp_roman.length == 4
      temp_roman = temp_roman.slice(0,1) + prev_roman
    end
    result = result + temp_roman
    prev_roman = roman
  end
  return result
end

# roman_numerals(3999)

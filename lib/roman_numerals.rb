def roman_numerals(input)

  library = {1000 => 'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X', 5 => 'V', 1 => 'I'}
  result = "";
  prev_roman_array = [];
  is_possibly_nine = false;

  library.each do |arabic, roman|
    temp_roman = ""
    prev_roman_array.push(roman)
    while input > 0 && arabic <= input
      if arabic <= input
        # puts "input = " + input.to_s + "; arabic = " + arabic.to_s + "; roman = " + roman.to_s +
        #      "; prev_roman = " + prev_roman_array[prev_roman_array.length-2]
        temp_roman = temp_roman + roman
        if roman == "D" || roman == "L" || roman == "V"
          is_possibly_nine = true
          # puts "is_possibly_nine = true"
        end
        input -= arabic
      end
    end
    result_last = result.slice(result.length-1,1)
    prev_roman = prev_roman_array[prev_roman_array.length-2]
    if temp_roman.length == 4 && is_possibly_nine && result_last == prev_roman
      # puts "result = " + result + "; result_last = " + result_last = "; roman = " + roman
      result.slice!(result.length-1,1)
      temp_roman = temp_roman.slice(0,1) + prev_roman_array[prev_roman_array.length-3]
      is_possibly_nine = false
      # puts "is_possibly_nine set to false"
    elsif temp_roman.length == 4
      temp_roman = temp_roman.slice(0,1) + prev_roman
    end
    result = result + temp_roman
    prev_roman = roman
  end

return result

end

# roman_numerals(3999)

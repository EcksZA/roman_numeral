require("rspec")
require("roman_numerals")

describe("roman_numerals") do

  it("returns the input number in Roman numerals - single Roman numerals") do
    roman_numerals(1).should(eq("I"))
  end

  it("returns the input number in Roman numerals - multiple Roman numerals") do
    roman_numerals(2).should(eq("II"))
  end

  it("returns the input number in Roman numerals - multiple orders of magnitude") do
    roman_numerals(255).should(eq("CCLV"))
  end

  it("returns the input number in Roman numerals - subtractive Roman numerals") do
    roman_numerals(4).should(eq("IV"))
  end

  it("returns the input number in Roman numerals - multiple orders of magnitude") do
    roman_numerals(254).should(eq("CCLIV"))
  end

  it("returns the input number in Roman numerals - largest possible number") do
    roman_numerals(3999).should(eq("MMMCMXCIX"))
  end

end

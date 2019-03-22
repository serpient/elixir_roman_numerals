defmodule ROMANTEST_2 do
  use ExUnit.Case
  doctest ROMAN_2

  test_cases = %{
    1 => "I",
    2 => "II",
    3 => "III",
    4 => "IV",
    5 => "V",
    6 => "VI",
    7 => "VII",
    8 => "VIII",
    9 => "IX",
    10 => "X",
    11 => "XI",
    12 => "XII",
    13 => "XIII",
    15 => "XV",
    20 => "XX",
    39 => "XXXIX",
    40 => "XL",
    27 => "XXVII",
    49 => "XLIX",
    86 => "LXXXVI",
    100 => "C",
    149 => "CXLIX",
    268 => "CCLXVIII",
    489 => "CDLXXXIX",
    887 => "DCCCLXXXVII",
    1000 => "M",
    2000 => "MM",
    403 => "CDIII"
  }

  for {value, converted_value} <- test_cases do
    @value value
    @converted_value converted_value
    @function_result ROMAN_2.roman_numeral_converter(@value)
    test @value do
      assert @function_result == @converted_value
    end
  end

end

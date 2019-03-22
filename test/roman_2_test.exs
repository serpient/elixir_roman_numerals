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

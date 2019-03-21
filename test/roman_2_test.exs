defmodule ROMANTEST_2 do
  use ExUnit.Case
  doctest ROMAN_2

  test 1 do
    assert ROMAN_2.roman_numeral_converter(1) == "I"
  end

  test 2 do
    assert ROMAN_2.roman_numeral_converter(2) == "II"
  end

  test 3 do
    assert ROMAN_2.roman_numeral_converter(3) == "III"
  end

  test 4 do
    assert ROMAN_2.roman_numeral_converter(4) == "IV"
  end

  test 5 do
    assert ROMAN_2.roman_numeral_converter(5) == "V"
  end

  test 6 do
    assert ROMAN_2.roman_numeral_converter(6) == "VI"
  end

  test 7 do
    assert ROMAN_2.roman_numeral_converter(7) == "VII"
  end
end

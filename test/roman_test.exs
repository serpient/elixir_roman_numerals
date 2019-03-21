defmodule ROMANTest do
  use ExUnit.Case
  doctest ROMAN

  test "converts 1 to roman" do
    assert ROMAN.roman_numeral_converter(1) == "I"
  end

  test "converts 5 to roman" do
    assert ROMAN.roman_numeral_converter(5) == "V"
  end

  test "converts 10 to roman" do
    assert ROMAN.roman_numeral_converter(10) == "X"
  end

  test "converts 50 to roman" do
    assert ROMAN.roman_numeral_converter(50) == "L"
  end

  test "converts 100 to roman" do
    assert ROMAN.roman_numeral_converter(100) == "C"
  end

  test "converts 500 to roman" do
    assert ROMAN.roman_numeral_converter(500) == "D"
  end

  test "converts 1000 to roman" do
    assert ROMAN.roman_numeral_converter(1000) == "M"
  end

  test "converts 2 to roman" do
    assert ROMAN.roman_numeral_converter(2) == "II"
  end

  test "converts 3 to roman" do
    assert ROMAN.roman_numeral_converter(3) == "III"
  end

  test "converts 4 to roman" do
    assert ROMAN.roman_numeral_converter(4) == "IV"
  end

  test "converts 6 to roman" do
    assert ROMAN.roman_numeral_converter(6) == "VI"
  end

  test "converts 7 to roman" do
    assert ROMAN.roman_numeral_converter(7) == "VII"
  end

  test "converts 8 to roman" do
    assert ROMAN.roman_numeral_converter(8) == "VIII"
  end

  test "converts 9 to roman" do
    assert ROMAN.roman_numeral_converter(9) == "IX"
  end
end

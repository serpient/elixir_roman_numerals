defmodule ROMANTest do
  use ExUnit.Case
  doctest ROMAN

  test_cases = [
    [1, "I"],
    [2, "II"],
    [3, "III"],
    [4, "IV"],
    [5, "V"],
    [6, "VI"],
    [9, "IX"],
    [10, "X"],
    [11, "XI"],
    [12, "XII"],
    [13, "XIII"],
    [14, "XIV"],
    [19, "XIX"],
    [27, "XXVII"],
    [29, "XXIX"],
    [48, "XLVIII"],
  ]

  for [number, converted_value] <- test_cases do
    @number number
    @converted_value converted_value
    @function ROMAN.roman_numeral_converter(@number)
    test "#{number}" do
      # result = apply(@function, [@number])
      assert @function == @converted_value
    end
  end
end

  # test "converts 49 to roman" do
  #   assert ROMAN.roman_numeral_converter(49) == "XLIX"
  # end

  # test "converts 50 to roman" do
  #   assert ROMAN.roman_numeral_converter(50) == "L"
  # end

  # test "converts 100 to roman" do
  #   assert ROMAN.roman_numeral_converter(100) == "C"
  # end

  # test "converts 500 to roman" do
  #   assert ROMAN.roman_numeral_converter(500) == "D"
  # end

  # test "converts 1000 to roman" do
  #   assert ROMAN.roman_numeral_converter(1000) == "M"
  # end

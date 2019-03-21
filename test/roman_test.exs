# defmodule ROMANTest do
#   use ExUnit.Case
#   doctest ROMAN

#   test_cases = [
#     [1, "I"],
#     [2, "II"],
#     [3, "III"],
#     [4, "IV"],
#     [5, "V"],
#     [6, "VI"],
#     [9, "IX"],
#     [10, "X"],
#     [11, "XI"],
#     [12, "XII"],
#     [13, "XIII"],
#     [14, "XIV"],
#     [19, "XIX"],
#     [27, "XXVII"],
#     [29, "XXIX"],
#     [48, "XLVIII"],
#     [50, "L"],
#     [59, "LIX"],
#     [88, "LXXXVIII"],
#     [93, "XCIII"],
#     [100, "C"],
#     [141, "CXLI"],
#     [163, "CLXIII"],
#     [402, "CDII"],
#     [500, "D"],
#     [575, "DLXXV"],
#     [911, "CMXI"],
#     [1000, "M"],
#     [1024, "MXXIV"],
#     [2000, "MM"],
#     [2942, "MMCMXLII"],
#     [3000, "MMM"]
#   ]

#   for [number, converted_value] <- test_cases do
#     @number number
#     @converted_value converted_value
#     @function ROMAN.roman_numeral_converter(@number)
#     test "#{number}" do
#       # result = apply(@function, [@number])
#       assert @function == @converted_value
#     end
#   end
# end

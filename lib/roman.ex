defmodule ROMAN do
  def roman_numeral_converter(integer) do
    cond do
      integer == 1 -> "I"
      integer <= 3 -> String.duplicate("I", integer)
      integer == 4 -> "IV"
      integer == 5 -> "V"
      integer <= 8 -> "V" <> String.duplicate("I", integer - 5)
      integer == 9 -> "IX"
      integer == 10 -> "X"
      integer <= 49 -> "X" <> roman_numeral_converter(integer - 10)
    end
  end
end

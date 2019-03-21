defmodule ROMAN_2 do
  def roman_numeral_converter(integer) do
    cond do
      integer < 4 -> String.duplicate("I", integer)
      integer == 4 -> "IV"
      integer == 5 -> "V"
      integer == 6 -> "VI"
    end
  end
end

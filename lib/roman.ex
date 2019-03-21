defmodule ROMAN do
  def roman_numeral_converter(integer) do
    cond do
      integer == 1 -> String.duplicate("I", integer)
      integer == 2 -> String.duplicate("I", integer)
    end
  end
end

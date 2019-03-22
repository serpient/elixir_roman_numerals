defmodule ROMAN_2 do
  def convert_integer(integer) do
    cond do
      integer < 4 -> String.duplicate("I", integer)
      integer == 4 -> "IV"
      integer == 5 -> "V"
      integer <= 8 -> "V" <> String.duplicate("I", integer - 5)
      integer == 9 -> "IX"
      integer == 10 -> "X"
    end
  end
  def roman_numeral_converter(integer) do
    # Integer.digits(integer)
    # |> Enum.with_index
    # |> Enum.map(fn {value, index} ->  convert_integer() end)
    cond do
      integer < 4 -> String.duplicate("I", integer)
      integer == 4 -> "IV"
      integer == 5 -> "V"
      integer <= 8 -> "V" <> String.duplicate("I", integer - 5)
      integer == 9 -> "IX"
      integer == 10 -> "X"
      integer < 39 -> "X" <> roman_numeral_converter(integer - 10)
      integer == 40 => "XL"
    end
  end
end

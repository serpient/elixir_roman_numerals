defmodule ROMAN_2 do
  def convert_integer(integer) do
    multiplier = cond do
      integer < 10 -> 1
      integer < 100 -> 10
    end
    divided_integer = trunc(integer / multiplier)
    cond do
      integer <= 3 * multiplier -> String.duplicate("I", divided_integer)
      integer == 4 * multiplier -> "IV"
      integer == 5 * multiplier -> "V"
      integer <= 8 * multiplier -> "V" <> String.duplicate("I", divided_integer - 5)
      integer == 9 * multiplier -> "IX"
      integer == 10 * multiplier -> "X"
      integer <= 39 * multiplier -> "X" <> convert_integer(divided_integer - 10)
      integer == 40 * multiplier -> "XL"
    end
  end

  def roman_numeral_converter(integer) do
    length = Integer.to_string(integer) |> String.length
    Integer.digits(integer)
    |> Enum.with_index
    |> Enum.map(fn {value, index} -> convert_integer(value * trunc(:math.pow(10, length - index - 1))) end)
    |> Enum.join
  end

end

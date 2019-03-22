defmodule ROMAN_2 do
  def convert_integer(integer) do
    multiplier = cond do
      integer < 10 -> 1
      integer < 100 -> 10
    end
    ranges = %{
      1 => ["I", "V", "X"],
      10 => ["X", "L", "C"],
    }
    [base_one, base_five, base_ten] = ranges[multiplier]
    divided_integer = trunc(integer / multiplier)
    cond do
      integer <= 3 * multiplier -> String.duplicate(base_one, divided_integer)
      integer == 4 * multiplier -> base_one <> base_five
      integer == 5 * multiplier -> base_five
      integer <= 8 * multiplier -> base_five <> String.duplicate(base_one, divided_integer - 5)
      integer == 9 * multiplier -> base_one <> base_ten
      integer == 10 * multiplier -> base_ten
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

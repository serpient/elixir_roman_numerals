defmodule ROMAN do
  def get_range(key) do
    cond do
      key == 1 -> ["I", "V", "X"]
      key == 10 -> ["X", "L", "C"]
      key == 100 -> ["C", "D", "M"]
      key == 1000 -> ["M", "M", "M"]
    end
  end

  def calculate_degree_of_ten(value, power) do
    trunc(value * :math.pow(10,(power)))
  end

  def roman_numeral_converter(integer) do
    length = Integer.to_string(integer) |> String.length
    Integer.digits(integer)
    |> Enum.with_index
    |> Enum.map(fn {value, index} -> calculate_degree_of_ten(value, length - index - 1) |> parse_number end)
    |> Enum.join
  end

  def parse_number(integer) do
    range_multiplier =
      cond do
        integer < 10 -> 1
        integer <= 100 -> 10
        integer > 100 and integer <= 1000 -> 100
        integer > 1000 -> 1000
      end

    range = get_range(range_multiplier)
    base_one = Enum.at(range, 0)
    base_five = Enum.at(range, 1)
    base_ten = Enum.at(range, 2)

    cond do
      integer == 0 -> ""
      integer == 1 * range_multiplier -> base_one
      integer <= 3 * range_multiplier -> String.duplicate(base_one, trunc(integer / range_multiplier))
      integer == 4 * range_multiplier -> base_one <> base_five
      integer == 5 * range_multiplier -> base_five
      integer <= 8 * range_multiplier -> base_five <> String.duplicate(base_one, trunc(integer / range_multiplier) - 5)
      integer == 9 * range_multiplier -> base_one <> base_ten
      integer == 10 * range_multiplier -> base_ten
    end

  end

end

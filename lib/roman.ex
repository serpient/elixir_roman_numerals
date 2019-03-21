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
    range_type =
      cond do
        integer < 10 -> 1
        integer <= 100 -> 10
        integer > 100 -> 100
        integer > 1000 -> 1000
      end

    range = get_range(range_type)
    base_numeral = Enum.at(range, 0)
    middle_numeral = Enum.at(range, 1)
    top_numeral = Enum.at(range, 2)

    cond do
      integer == 0 -> ""
      integer == 1 * range_type -> base_numeral
      integer <= 3 * range_type -> String.duplicate(base_numeral, trunc(integer / range_type))
      integer == 4 * range_type -> base_numeral <> middle_numeral
      integer == 5 * range_type -> middle_numeral
      integer <= 8 * range_type -> middle_numeral <> String.duplicate(base_numeral, trunc(integer / range_type) - 5)
      integer == 9 * range_type -> base_numeral <> top_numeral
      integer == 10 * range_type -> top_numeral
      integer > 10 * range_type -> ""
    end

  end

end

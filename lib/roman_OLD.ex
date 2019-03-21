defmodule ROMAN_OLD do
  def roman_numeral_map() do
    %{
      1 => "I",
      5 => "V",
      10 => "X",
      50 => "L",
      100 => "C",
      500 => "D",
      1000 => "M"
    }
  end

  def multiples(key) do
    multiples_map = %{
      1 => 1,
      2 => 10,
      3 => 100,
      4 => 1000
    }
    multiples_map[key]
  end

  def retrieve_roman_numeral(key) do
    Map.fetch!(roman_numeral_map(), key)
  end

  def find_smallest_match(integer) when integer == 1 do
    1
  end

  def find_smallest_match(integer) do
    Map.keys(roman_numeral_map())
    |> Enum.reverse()
    |> Enum.find(fn x -> x < integer end)
  end

  def find_next_largest_match(integer) do
    Map.keys(roman_numeral_map())
    |> Enum.find(fn x -> x > integer end)
  end

  def convert_to_roman_numeral(smallest, num_of_repeated_values, integer)
      when num_of_repeated_values > 3.0 do
    next_largest_match = find_next_largest_match(smallest)
    next_largest_roman_numeral = retrieve_roman_numeral(next_largest_match)

    [next_largest_roman_numeral]
    |> List.insert_at(0, retrieve_roman_numeral(next_largest_match - integer))
    |> List.to_string()
  end

  def convert_to_roman_numeral(smallest, num_of_repeated_values, _integer)
      when num_of_repeated_values <= 3.0 and smallest == 1 do
    retrieve_roman_numeral(smallest)
    |> String.duplicate(trunc(num_of_repeated_values))
  end

  def convert_to_roman_numeral(smallest, num_of_repeated_values, _integer)
      when num_of_repeated_values <= 3.0 do

    duplicated_string =
      retrieve_roman_numeral(find_smallest_match(smallest))
      |> String.duplicate(trunc(num_of_repeated_values))

    [retrieve_roman_numeral(smallest)]
    |> List.insert_at(1, duplicated_string)
    |> List.to_string()
  end

  def fetch_roman_symbol(_isMatch, integer) when integer == 0 do
    ""
  end

  def fetch_roman_symbol(isMatch, integer) when isMatch == true do
    retrieve_roman_numeral(integer)
  end

  def fetch_roman_symbol(isMatch, integer) when isMatch == false do
    smallest_matching_roman_numeral = find_smallest_match(integer)

    num_of_repeated_values =
      if(smallest_matching_roman_numeral == 1,
        do: integer - 0,
        else: integer - smallest_matching_roman_numeral
      )

    convert_to_roman_numeral(smallest_matching_roman_numeral, num_of_repeated_values, integer)
  end

  def is_exact_match(value) do
    fetch_result = Map.fetch(roman_numeral_map(), value)
    if(fetch_result == :error, do: false, else: true)
  end

  def split_the_number_into_a_map(integer) do
    length = String.length(Integer.to_string(integer))
    Enum.with_index(Integer.digits(integer))
    |> Enum.map(fn {value, index} -> value * multiples(length - index) end)
  end

  def convert_split_values_into_roman_string(map_value) do
    Enum.to_list(map_value)
    |> Enum.map(fn value ->  fetch_roman_symbol(is_exact_match(value), value) end)
    |> Enum.join
  end

  def roman_numeral_converter(integer) do
    split_the_number_into_a_map(integer)
    |> convert_split_values_into_roman_string
  end
end

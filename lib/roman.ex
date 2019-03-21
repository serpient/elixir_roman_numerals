defmodule ROMAN do
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

  def convert_to_roman_numeral(smallest, num_of_repeated_values)
      when num_of_repeated_values > 3.0 do
    next_largest_roman_numeral = retrieve_roman_numeral(find_next_largest_match(smallest))

    [next_largest_roman_numeral]
    |> List.insert_at(0, retrieve_roman_numeral(smallest))
    |> List.to_string()
  end

  def convert_to_roman_numeral(smallest, num_of_repeated_values)
      when num_of_repeated_values <= 3.0 and smallest == 1 do
    retrieve_roman_numeral(smallest)
    |> String.duplicate(trunc(num_of_repeated_values))
  end

  def convert_to_roman_numeral(smallest, num_of_repeated_values)
      when num_of_repeated_values <= 3.0 do
    string_lower_than_smallest = retrieve_roman_numeral(find_smallest_match(smallest))

    duplicated_string =
      String.duplicate(string_lower_than_smallest, trunc(num_of_repeated_values))

    [retrieve_roman_numeral(smallest)]
    |> List.insert_at(1, duplicated_string)
    |> List.to_string()
  end

  def fetch_roman_symbol(val, integer) when val == :error do
    smallest_matching_roman_numeral = find_smallest_match(integer)

    num_of_repeated_values =
      if(smallest_matching_roman_numeral == 1,
        do: integer - 0,
        else: integer - smallest_matching_roman_numeral
      )

    convert_to_roman_numeral(smallest_matching_roman_numeral, num_of_repeated_values)
  end

  def fetch_roman_symbol(val, _) when elem(val, 0) == :ok do
    elem(val, 1)
  end

  def roman_numeral(integer) do
    Map.fetch(roman_numeral_map(), integer)
    |> fetch_roman_symbol(integer)
  end
end

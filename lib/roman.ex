defmodule ROMAN do
  @moduledoc """
  Documentation for ROMAN.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ROMAN.hello()
      :world

  """
  def hello do
    :world
  end

  def roman_numeral(integer) do
    roman_numeral_map = %{
      1 => 'I',
      5 => 'V',
      10 => 'X',
      50 => 'L',
      100 => 'C',
      500 => 'D',
      1000 => 'M',
    }
    value = Map.fetch(roman_numeral_map, integer)
    elem(value, 1)
  end
end

defmodule ROMANTest do
  use ExUnit.Case
  doctest ROMAN

  test "greets the world" do
    assert ROMAN.hello() == :world
  end

  test "converts 1 to roman" do
    assert ROMAN.roman_numeral(1) == 'I'
  end

  test "converts 5 to roman" do
    assert ROMAN.roman_numeral(5) == 'V'
  end

  test "converts 10 to roman" do
    assert ROMAN.roman_numeral(10) == 'X'
  end

  test "converts 50 to roman" do
    assert ROMAN.roman_numeral(50) == 'L'
  end

  test "converts 100 to roman" do
    assert ROMAN.roman_numeral(100) == 'C'
  end

  test "converts 500 to roman" do
    assert ROMAN.roman_numeral(500) == 'D'
  end

  test "converts 1000 to roman" do
    assert ROMAN.roman_numeral(1000) == 'M'
  end
end

# ROMAN

### Write a function to convert from normal numbers to Roman Numerals. Handle up to 3000

## Conversions:
### I - 1
Means 1

### V - 5
Placing I in front of the V — or placing any smaller number in front of any larger number — indicates subtraction.

### X - 10

### L - 50

### C - 100

### D - 500

### M - 1000

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `kv` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:kv, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/kv](https://hexdocs.pm/kv).

## Compile project
`mix compile`

## After compilation, start a iex session
`iex -S mix`

## Running Tests
`mix test`

## Running a single test example
`mix test test/roman_test.exs:5`

## Automatic code formatting
`mix format`
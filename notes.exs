## tuples
# similar to arrays in other languages
{1, 2}
{:ok, 42, "next"}

## lists 
# similar to linked lists in other languages
[1, 2, 3, 4]
[1,2,3] ++ [4,5,6]
[1,2,3,4] -- [2,4]
1 in [1,2,3,4]

## keyword lists
[name: "Dave", city: "Dallas"]
# is converted to
[{:name, "Dave"}, {:city, "Dallas"}]

## maps
states = %{ "AL" => "Alabama", "WI" => "Wisconsin"}
states["AL"]
any_key_map = %{ :two => 2, {1, 1, 1} => 3, "one" => 1 }
any_key_map.two  # use dot notation when key is atom

## keyword lists vs maps
# maps allow only one entry per key while
# keyword lists allow many

## name conventions
# Module, record, protocol, and behavior names are camel-case
# everything else is snake-case
# start with underscore and Elixir won't warn if name is unused
_unused_variable

## truth
true, false, nil
# anything other than false or nil is true

## comparison
1 === 1.0 # false
1 == 1.0 # true
1 !== 1.0 # true
1 != 1.0 # false
1 < 2
1 <= 1
1 > 2
# number < atom < reference < function < port < pid < tuple < map < list < binary

# div-rem
div(13, 4) = 3
rem(13, 4) = 1

## functions
sum = fn (a,b) -> a + b end
sum.(1,2) # use dot to invoke
# last thing in function is always returned, just like Ruby

# Call erlang function from elixir
:erlang.length([1,2,3,4,5,6])

## module directives
# import
# import brings functions of a module into scope
import List, only: [flatten: 1]
# alias
alias Mix.Tasks.Doctest, as: Doctest
# require
# loads a module's macros before using any of them

## module attributes
# these are like constants
defmodule Example do
  @pi = 3.14159
end







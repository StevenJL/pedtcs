# Modules and Named Functions

# exercise 1, exercise 3
defmodule Times do
  def double(n), do: n * 2

  def triple(n), do: n * 3

  def quadruple(n), do: double(double(n))
end

# exercise 2
# iex chpt_6.exs
# c "chpt_6.exs"

# exercise 4
defmodule Sum do
  def of(0), do: 0
  def of(n), do: n + of(n - 1)
end

# exercise 5
defmodule Gcd do
  def of(x,0), do: x
  def of(x,y), do: (of(y, rem(x,y)))
end

# exercise 6
defmodule Chop do
  def guess(actual, range) do
    current_guess = make_guess(range)
    check(actual, current_guess, range)
  end

  def make_guess(min..max) do
    mid = div(max-min,2) + min
    IO.puts "Is it #{mid}" 
    mid
  end
  
  def check(actual, current_guess, range) when actual == current_guess do
    current_guess  
  end

  def check(actual, current_guess, min..max) when actual < current_guess do
    new_max = current_guess - 1
    new_guess = make_guess(min..new_max)
    check(actual, new_guess, min..new_max)
  end

  def check(actual, current_guess, min..max) when actual > current_guess do
    new_min = current_guess + 1  
    new_guess = make_guess(new_min..max)
    check(actual, new_guess, new_min..max)
  end
end

# exercise 7
:io.format("~.2f~n", [3.14159])
System.get_env("HOME")
Path.extname("testfile.exs")
System.cwd
System.cmd("date", [])



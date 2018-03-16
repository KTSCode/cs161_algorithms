defmodule Algorithms.StringMatching do
  @moduledoc """
  ## String Matching Functions:
  """

  @doc """
  **KMP:**
    string searching algorithm that seaches for the occurences of a patter in a string
    input: pattern and string to search
    output: [{index of where pattern occurs, length of pattern}]
  ## Examples
      iex> Algorithms.StringMatching("ABCDABD", "ABC ABCDAB ABCDABCDABDE")
      [{15, 7}]

  """
  #@spec kmp(<<_::size>>, <<_::size>>) :: [tuple]
  #def kmp(pattern, text)
  #@spec quick([elem]) :: [] | [elem] when elem: integer
  #def quick([]), do: []
  #def quick([elem]), do: [elem]
end

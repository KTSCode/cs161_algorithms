defmodule Algorithms.Searches do
  @moduledoc """
  All the functions dealing with searching for an element in a list
  """

  @doc """
  sequentially searches a list for a passed element
  ### Algorithm Analysis
    * Lower Bounds:
    * Complexity: O(n)

  ## Examples
    iex> Algorithms.Searches.seq_search_max([1, 3, 5, 2, 4])
    5

    iex> Algorithms.Searches.seq_search_max([])
    nil

    iex> Algorithms.Searches.seq_search_max([1, 3, 5, 2, 4, 82, 21, 0, 92, 12, 11])
    92

  """
  @spec seq_search_max([integer]) :: integer
  def seq_search_max([head | tail]), do: seq_search_max(tail, head)
  def seq_search_max([]), do: nil

  @spec seq_search_max([integer], integer) :: integer
  defp seq_search_max([head | tail], max), do: seq_search_max(tail, Kernel.max(max, head))
  defp seq_search_max([], max), do: max

  @doc """
  calculates combinations of change
  ### Algorithm Analysis
    * Lower Bounds:
    * Complexity: O(n)

  ## Examples
    iex> Algorithms.Searches.change(17)
    6

    iex> Algorithms.Searches.change(50)
    50

    iex> Algorithms.Searches.change(51)
    50

    iex> Algorithms.Searches.change(25)
    13

    iex> Algorithms.Searches.change(10)
    4

  """
  @spec change(integer) :: integer
  def change(amount), do: half_dollar(amount)

  defp half_dollar(amount) do
    if amount >= 50 do
      quarter(amount) + half_dollar(amount - 50)
    else
      quarter(amount)
    end
  end

  defp quarter(amount) do
    if amount >= 25 do
     dime(amount) + quarter(amount - 25)
    else
      dime(amount)
    end
  end

  defp dime(amount) do
    if amount >= 10 do
     nickel(amount) + dime(amount - 10)
    else
      nickel(amount)
    end
  end

  defp nickel(amount) do
    if amount >= 0 do
      div(amount, 5) + 1
    else
      0
    end
  end

end

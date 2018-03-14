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
end

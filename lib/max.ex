defmodule Algorithms.Max do
  @moduledoc """
  Finds the Max value of a list
  """

  @doc """
  returns the max value in the list
  ### Algorithm Analysis
    * Lower Bounds:
      * Each time call `Kernel.max/2` we know one of them is not the maximum
      * To determine the maximum, we must rule out *n* - 1 of the elements
      * Therefore *n* - 1 comparisons are necessary
    * Results:
      * Lower bounds for Worst Case: *n* - 1 comparisons
      * Upper bounds for Worst Case: *n* - 1 comparisons
      * Therefore this is an optimal algorithm for worst case comparison performance

  ## Examples
      iex> Algorithms.Max.max_value([1, 3, 5, 2, 4])
      5

      iex> Algorithms.Max.max_value([1, 5, 5, 20, 4])
      20

      iex> Algorithms.Max.max_value([])
      0

  """
  @spec max_value([integer]) :: integer
  def max_value([head | tail]), do: max_value(tail, head)

  def max_value([]), do: 0

  def max_value([head | tail], max), do: max_value(tail, Kernel.max(max, head))

  def max_value([], max), do: max
end

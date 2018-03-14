defmodule Algorithms.Sorts do
  @moduledoc """
  ## Sort Problems:
  """

  @doc """
  **Quicksort:**
    sort a list of integers
  ## Examples
      iex> Algorithms.Sorts.quick([32, 18, 2, 12, 45, 9, 103, 32])
      [2, 9, 12, 18, 32, 32, 45, 103]

      iex> Algorithms.Sorts.quick([3, 1, 2])
      [1, 2, 3]

      iex> Algorithms.Sorts.quick([])
      []

      iex> Algorithms.Sorts.quick([1])
      [1]

  """
  @spec quick([elem]) :: [] | [elem] when elem: integer
  def quick([]), do: []
  def quick([elem]), do: [elem]
  def quick([head | tail]) do
    quick(Enum.filter(tail, fn(x) -> x < head end)) ++ [head] ++  quick(Enum.filter(tail, fn(x) -> x >= head end))
  end

  @doc """
  **MergeSort**
    sort a list of integers
  ## Examples
      iex> Algorithms.Sorts.merge_sort([])
      []

      iex> Algorithms.Sorts.merge_sort([1])
      [1]

      iex> Algorithms.Sorts.merge_sort([20, 34, 1, 18, 20, 104, 76, 4])
      [1, 4, 18, 20, 20, 34, 76, 104]

      iex> Algorithms.Sorts.merge_sort([1, 3, 2])
      [1, 2, 3]

  """
  @spec merge_sort([elem]) :: [] | [elem] when elem: integer
  def merge_sort([]), do: []
  def merge_sort([elem]), do: [elem]
  def merge_sort(list) do
    first = Enum.take_every(list, 2)
    second = Enum.drop_every(list, 2)
    merge(merge_sort(first), merge_sort(second), [])
  end

  @spec merge([elem], [elem], [elem]) :: [elem] when elem: integer
  defp merge(first, [], remainder), do: remainder ++ first
  defp merge([], second, remainder), do: remainder ++ second
  defp merge(first = [f_head | f_tail], second = [s_head | s_tail], remainder) do
    if f_head < s_head do
      merge(f_tail, second, remainder ++ [f_head])
    else
       merge(first, s_tail, remainder ++ [s_head])
    end
  end
end

defmodule Algorithms do
  @moduledoc """
  # CS 161 Algorithms Final Study Guide:
  ## Course Intro
  ### Algorithms
    * **Algorithm:** Rules which give a sequence of operations for solving a problem
      * Characteristics:
        * *Finite* - must terminate after a finite number of steps
        * *Definite* - each step must be unambiguous
        * *Effective* - each step must be doable in finite time
        * *Produces output* and might have *input*

  ### Complexity and Asymptotics
    * **O(f)** = {g : N → R∗ | ∃c ∈ R+, ∃n0 ∈ N, ∀n ≥ n0 g(n) ≤ c · f(n)}
      * we refer to O(f) as *order of f* or *big-O of f*
      * we often say g is O(f), but we mean that g is in O(f)
      * we abuse the notation by allowing a g(n) to be in the order of f even when each of f and f have a finite number of negative values
    * **Ω(f)** = {g : N → R∗ | ∃c ∈ R+, ∃n0 ∈ N, ∀n ≥ n0 g(n) ≥ c · f(n)}
    * **θ(f)** = Ω(f) ∩ O(f)
  #### for functions in N → R∗
    * limit n→∞ g(n)/f(n) = C > 0 ⇒ g ∈ θ(f)
    * limit n→∞ g(n)/f(n) = C >= 0 ⇒ g ∈ O(f)
    * limit n→∞ g(n)/f(n) = C = 0 ⇒ g ∈ o(f)
    * limit n→∞ g(n)/f(n) = ∞ ⇒ g ∈ Ω(f)

  ### Models of Computation
    * **Arithmetic Model** - when arithmetic operations dominate cost
      * variables can hold any integer
      * each variable takes 1 unit of space
      * operations are `+, -, *, /`
      * each operations takes 1 unit of time
      * assigments, I/O, branching, and comparisons take no time
    * **Bitwise Model** - takes account og limited size of a real memory word
      * variables can have values 0 or 1
      * each variable take 1 unit of space
      * operations are ᭴, ∨, ⊕, ¬
      * Each operation takes 1 unit of time
      * Assigments, I/O, branching, comparisons take no time
      * **Comparison Model** - for some problems, comparisons dominate costs
        * All steps consist of
          1. halt with defined outup, or
          2. compare tow quantities and the comparison result determines the next step
        * Variables can hold any integer
        * Any mathematical operation can be done in no time
        * Assignments, I/O, branching take no time
        * Comparisons take 1 unit of time

   ## Searching
   ### Sequential Seach
     * Ordered list

   ### Binary Seach
     * Ordered list

   ### Interpolation Seach
     * "Looking up cat in a dictionary you expect to find it at the beginning"

   ## Sorting and Lower Bounds
   ### Insertion Sort
     * Binary insertion sort: uses binary search to find correct place
     * Shellsort

   ### Lower Bounds on Sorting
     * **Inversion** - an inversion within a seqence of values is a pair of values that er out of order relative to eachother

   ### Heapsort
     * Maxheap

   ### Distribution Sort
     * Bucket Sort
     * Radix Sort

   ### Lower Bounds on Selection
     * MaxMin
     * Second Largest
     * Median

   ## Divide and Conquer
     * Basic Idea
     * Three Steps
     * Analysis
   ### Selection of Median
     * Selection
     * QuickSelect
       * Analysis of QuickSelect
     * DSelect
       * Analysis
     * Weighted Median

   ### MaxMin
     * Example

   ### Integer Multiplication
     * Example
     * Karatsuba

   ### Divide and Conquer Theorem
     * Time Complexity
     * Theorem:
     * Unrolling
     * Expanding
     * General
   #### The Master Theorem
     * Theorem

   ### Matrix Multiplication
     * Strassen
     * The Skyline Problem


   ## Dynamic Programming
   ### Introduction
     * **Dynamic Programming** - can be thought of as reverse recursion

   ### Product of Matrices
     * Recursion vs DP

   ### Common Substrings and Subsequences
     * **Problem** - Given 2 sequences, `A[1:m]` and `B[1:n]`, `m >= n` find the longest contiguous sequence appearing in both

   ### Optimal Binary Search Trees
     * Values of IPL in BST
     * Avg Value of IPL in BST
     * Avg Cost to Query a BST
     * Solution Approach
     * Subproblems
     * Recurrence

   ### Nim
     * Game Description
     * Algorithm DP
     * Algorithm Recursion with Memoization

   ### Fibonacci Numbers
     * Definition
     * Recursion
     * DP

   ## Graph Algorithms
   ### Minimum Spanning Trees
     * Algorithms
      * Prim's
      * Kruskal's
      * Boruvka's
      * Hybrid

   ### Depth-first Search
     * Example

   ### Biconnected Components
     * Articulation Point

   ### Transitive Closure
     * reflexive
     * irreflexive

   ### Shortest Path
     * Floyd-Warshall
     * All-pairs
     * Dijkstra's


   ## Other Topics
   ### Pseudo-Polynomial Algorithms
   #### Knapsack Problem
     * Recurrence
     * Dynamic Programming
     * Integer KP

   ### KMP String Matching
     * **Problem** - Find where a pattern occurs within a text

   ### Probabilistic Search Algorithm
     * Searching an ordered linked list in arrays


  """
end

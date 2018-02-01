defmodule Algorithms do
  @moduledoc """
  # CS 161 Algorithms:
  ## Algorithms
    * **Algorithm:** Rules which give a sequence of operations for solving a problem
      * Characteristics:
        * *Finite* - must terminate after a finite number of steps
        * *Definite* - each step must be unambiguous
        * *Effective* - each step must be doable in finite time
        * *Produces output* and might have *input*

  ## Complexity and Asymptotics
    * **O(f)** = {g : N → R∗ | ∃c ∈ R+, ∃n0 ∈ N, ∀n ≥ n0 g(n) ≤ c · f(n)}
      * we refer to O(f) as *order of f* or *big-O of f*
      * we often say g is O(f), but we mean that g is in O(f)
      * we abuse the notation by allowing a g(n) to be in the order of f even when each of f and f have a finite number of negative values
    * **Ω(f)** = {g : N → R∗ | ∃c ∈ R+, ∃n0 ∈ N, ∀n ≥ n0 g(n) ≥ c · f(n)}
    * **θ(f)** = Ω(f) ∩ O(f)
  ### for functions in N → R∗
    * limit n→∞ g(n)/f(n) = C > 0 ⇒ g ∈ θ(f)
    * limit n→∞ g(n)/f(n) = C >= 0 ⇒ g ∈ O(f)
    * limit n→∞ g(n)/f(n) = C = 0 ⇒ g ∈ o(f)
    * limit n→∞ g(n)/f(n) = ∞ ⇒ g ∈ Ω(f)

  ## Models of Computation
    * **Arithmetic Model** - when arithmetic operations dominate cost
      * variables can hold any integer
      * each variable takes 1 unit of space
      * operations are `+, -, *, /`
      * each operations takes 1 unit of time
      * assigments, I/O, branching, and comparisons take no time

  """
end

Week 2: Array2
================

This week we are going learn about **Arrays and loops** in Ruby.

To do so we are going to create an awesome wrapper for Ruby's `Array` class.
Since we want our brains fresh and rested we are going to call it `Array2`.

We have an `Array2` skeleton we can extend:



Rules
-----
We are going to add behaviour of Ruby's `Array` class to our `Array2`. But we will have certain constraints:

1. You can't use Ruby's standard arrays. Every time you feel the need to use one, use our awesome `Array2` instead.
2. You can only use methods of `Array2`. That means that in the begining you can only use `length`, `delete_at`, `insert` and `at`. Once you write a method you can reuse it for writting others. But remember, you **only can call methods of** `Array2`.
2. Every time you have to write a loop (`for`, `repeat`, `until`) you have to switch the loop type. When you finish the exercise every loop type should have been used the same amount of times.

Behaviour to Add (a.k.a. exercises)
-----------------------------------
Here are the list of methods you have to write following this rules. Although a thorough description of each method is provided you should go check Array's RDoc to know how the method exactly behaves. If you have doubt's you can always use `irb` and see how things work.

We haven't talked about blocks yet, so every method of array that takes a block won't be among the ones we are adding to `Array2` (for now...).

The exercises are divided in sets. *Do them in this order!*

Set of exercises 1
------------------

- `empty?`
  Returns `true` if `self` contains no elements.

- `include?(element)`
  Returns `true` if `element` is included in the array2. Otherwise returns false.

- `index(object)`
  Returns the index of the first element in `self` such that `object` is == to the element. If no match is found returns `nil`.

- `clear`
  Deletes all elements from `self`.

- `delete(object)`
  Deletes elements from `self` that are equal to `object`. If any elements are found, returns `object`. If the element is not found, returns `nil`.


Set of exercises 2
------------------

- `concat(other_array2)`:
  Appends the elements of the other array2 to `self` and returns `self`.

- `drop n`:
  Drops first `n` elements from `self` and returns `self`.

- `compact`
  Returns a *new* array2 with all the `nil` values in `self` removed.

- `uniq`
  Returns a *new* array2 by removing duplicate values in `self`.

- `reverse`
  Returns a *new* array2 containing `self`'s elements in inverse order.


Set of exercises 3
------------------

- `join separator`
  Returns a string created by converting each element of the array to a string, separated by `separator`.

- `first(n=1)`
  Returns a new array2 with the first `n` elements of the array. `n` defaults to `1`. If the array is empty, `first` with the default `n` value returns `nil`. With other `n` values returns an empty array2. (Study how `Array` class's `first` method behaves in case gaps in this explanation).

- `last(n=1)`
  Returns the n last elements of the array. `n` defaults to `1`.. If the array is empty, `first` with the default `n` value returns `nil`. With other `n` values returns an empty array array2. (Study how `Array` class's `last` method behaves in case gaps in this explanation).

- `rotate(n=1)`
  Returns a *new* array2 with the elements in `self` shifted `n` times to the left.
  The sifted elements are appended to the array.

# When done, submit this entire file to the autograder.

# Part 1

# Define a method `sum(array)` that takes an array of integers
# as an argument and returns the sum of its elements. For an
# empty array it should return zero.

def sum arr
  arr.inject(0, :+)
end

# Define a method `max_2_sum(array)` which takes an array of
# integers as an argument and returns the sum of its two
# largest elements. For an empty array it should return zero.
# For an array with just one element, it should return that element.

def max_2_sum arr
  arr.sort.last(2).inject(0, :+)
end

# Define a method `sum_to_n?(array, n)` that takes an array of
# integers and an additional integer, n, as arguments and returns
# true if any two elements in the array of integers sum to n. An
# empty array should sum to zero by definition.

def sum_to_n? arr, n
  arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

# Define a method `hello(name)` that takes a string representing
# a name and returns the string "Hello, " concatenated with the name.

def hello(name)
  "Hello, " + name 
end

# Define a method `starts_with_consonant?(s)` that takes a
# string and returns true if it starts with a consonant and
# false otherwise. (For our purposes, a consonant is any letter
# other than A, E, I, O, U.) NOTE: be sure it works for both
# upper and lower case and for nonletters!

def starts_with_consonant? s
  s =~ /^[a-z]/i && s !~ /^[aeiou]/i
end

# Define a method `binary_multiple_of_4?(s)` that takes a
# string and returns true if the string represents a binary
# number that is a multiple of 4. NOTE: be sure it returns
# false if the string is not a valid binary number!

def binary_multiple_of_4? s
  s =~ /^[01]+$/ && s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
	attr_accessor :isbn
	attr_accessor :price 

	def initialize(isbn, price)
		raise ArgumentError if isbn.empty? || price <= 0
	  @isbn = isbn
	  @price = price
	end

	def price_as_string
		"$%.2f" % price
	end
end

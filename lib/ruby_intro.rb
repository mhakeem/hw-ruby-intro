# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  arr.inject(:+)
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.size == 1
  #arr.sort[-2..-1].inject(:+)
  arr.sort.last(2).inject(:+)
end

def sum_to_n? arr, n
  return false if arr.empty? or arr.size == 1
  a = arr.combination(2).to_a
  a.each { |x| return true if x.inject(:+) == n }
  return false
  
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  st = /[aeiou]/ =~ s.downcase.chars.first
  return true if st == nil
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price < 1
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%.2f" % price
  end
end

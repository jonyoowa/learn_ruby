#write your code here
def add one, two
  one + two
end

def subtract one, two
  one - two
end

def sum array
  total = 0
  array.each { |i| total += i }
  total
end

def multiply one, two
  one * two
end

def power one, two
  one**two
end

def factorial number
  answer = 1
  index = number
  while (index > 0)
    answer *= index
    index -= 1
  end
end

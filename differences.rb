# GET NAME
def getName name
  puts "hello there: #{name}"
end
# getName "Gary"

# SEARCH ARRAY
def searchArray array, value
  0.upto(array.length-1) do |i|
    if array[i] == value 
      return true
    else array[i+1]
    end
  end
  return false
end
# puts searchArray [12,3,5,11,245,45], 13

#HAS DUPES
def hasDupes array
  obj = {:list => []}
  0.upto(array.length-1) do |i|
    if obj[array[i]]
      return true
    else 
      obj[array[i]] = true
    end
  end
  return false
end
# puts hasDupes [3,321,56,222,331,11]

#SWAP EM
def swapEm
  a = 10
  b = 30
  temp = b
  b = a
  a = temp
  puts "a is now #{a} and b is now #{b}"
end
# puts swapEm

#MULTIPLY ARRAY
def multiplyArray array
  total = 1
  if array.length == 0
    return 1
  end
  array.length.times do |i|
    total = total * array[array.length-1-i]
  end
  return total
end
puts multiplyArray [2,2,2,2,2]
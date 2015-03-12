# Equilibrium Index

# Find the number where the numbers left and right of the index are equal.

def equilibrium_index(array)
  counter = 0
  while counter >= 0
    left = array[0..counter].inject(:+)
    right = array[counter..-1].inject(:+)

    return array[counter] if left == right
    return "No equilibrium index" if counter == array.length
    counter += 1
  end
end

a=[1,1,2,1,1]
b=[2,3,1,5]
c=[5,3,2,3,5,7,3,1,2]
d=[1,2,4,2,5,2]
e=[7,2,4,3,5,6,7,5,9,4,6,3]
f=[99,1,2,3]
g=[1,1,1,1,1,1,1,1,1,1,9]
h=[3,1,1,1,1]

p equilibrium_index(a) == 2
p equilibrium_index(b) == 1
p equilibrium_index(c) == 5
p equilibrium_index(d) == 2
p equilibrium_index(e) == 7
p equilibrium_index(f) == "No equilibrium index"
p equilibrium_index(g) == 1
p equilibrium_index(h) == 1
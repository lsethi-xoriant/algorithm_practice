# Check if a number is prime

#DO NOT USE THE PRIME METHOD

def is_prime(number)
  return false if number <= 1 # 0 and  1 are not prime numbers

  counter = 2
  until counter == number do
    return false if number % counter == 0
    counter +=1
  end
  return true
end

p is_prime(0) == false
p is_prime(1) == false
p is_prime(2) == true
p is_prime(3) == true
p is_prime(4) == false
p is_prime(6) == false
p is_prime(17) == true
p is_prime(23) == true
p is_prime(99) == false
p is_prime(47) == true
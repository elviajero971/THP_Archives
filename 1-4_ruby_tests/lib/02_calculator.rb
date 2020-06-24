def add(numa1,numa2)
  numa1.to_i + numa2.to_i
end

def subtract(nums1,nums2)
  nums1.to_i - nums2.to_i
end

def sum (array)
  return array.sum
end

def multiply(numm1,numm2)
  numm1.to_i * numm2.to_i
end

def power(nump1,nump2)
  nump1.to_i ** nump2.to_i
end

def factorial (n)
  if n == 0 
    return 1 
  else 
    return (1..n).inject {|product, n| product * n }
  end 
end
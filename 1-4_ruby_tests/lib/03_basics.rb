def who_is_bigger(a, b, c)
  array = [a, b, c]
  array.each do |n|
      if n == nil
          return 'nil detected'
      end
  end
  max = array.max
  if array[0] == max
      return "a is bigger"
  end
  if array[1] == max
      return "b is bigger"
  end
  if array[2] == max
      return "c is bigger"
  end
end
def reverse_upcase_noLTA(str)
  str = str.reverse.upcase
  result = ""
  i = 0
  while (i != str.length)
      if (str[i] != 'L' && str[i] != 'T' && str[i] != 'A')
          result << str[i]
      end
      i += 1
  end
  result
end
def array_42(array)
  array.each do |nb|
      if nb == 42
          return true
      end
  end
  return false
end
def magic_array(array)
  result = []
  array.flatten.sort.each{ |n|
      if (n * 2) % 3 != 0
          result << n * 2
      end
  }
  result.sort.uniq
end

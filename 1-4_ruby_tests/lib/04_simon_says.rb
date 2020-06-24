def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, repeat=1)
  result = "#{string} #{string}"
  for i in 2...repeat
      result += ' ' + string
  end
  return result
end

def start_of_word(string, number)
  result = ""
  if number > string.length
      return nil
  end
  i = 0
  while i != number
      result += string[i]
      i += 1
  end
  result
end

def first_word(string)
  return string.split.first
end

def titleize(string)
  string.split.map(&:capitalize).join(' ')
end

def add(a, b)
  return a+b
end

def subtract(a,b)
  return a-b
end

def sum(arrayIn)
  output = 0
  if (arrayIn.length > 0)
    arrayIn.each {
      |x| output = output + x
    }
  end
  return output
end

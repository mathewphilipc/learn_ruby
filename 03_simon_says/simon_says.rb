#write your code here
def echo (inputString)
  return inputString
end

def shout (inputString)
  return inputString.upcase
end

def repeat (inputString, num = 2)
  outputString = ''

  if num >= 1
    outputString = inputString
  end

  if (num >= 2)
    count = 1
    while (count < num)
      outputString = outputString + ' ' + inputString
      count = count + 1
    end
  end

  return outputString
end

def start_of_word(inputString, position)
  return inputString[0..position-1]
end

def first_word(inputString)
  outputString = inputString
  firstSpacePos = inputString.index(' ')
  if firstSpacePos != nil
    outputString = inputString[0..firstSpacePos-1]
  end
  return outputString
end


def titleize (inputTitle)

  oldArray = inputTitle.split(' ')
  newArray = []

  oldArray.each do |i|
    if (newArray.length == 0)
      newArray.push(i.capitalize)
    else
      if (i=="and" || i=="the" || i=="over")
        newArray.push(i)
      else
        newArray.push(i.capitalize)
      end
    end
  end

  testOutput = newArray[0]

  if (newArray.length > 1)
    counter = 1
    while (counter < newArray.length)
        testOutput = testOutput + ' ' + newArray[counter]
        counter = counter + 1
    end
  end

  return testOutput.to_s
end

#write your code here
def translate(input)
  inputArr = input.split(' ')
  wordCount = inputArr.length
  outputArr = []
  inputArr.each { |i|

    newWord = i
    first=newWord[0]

    #if (newWord[0]=='q' && newWord[1]=='u')
    #  newWord = newWord[2..-1] + 'qu'
    #end

    while (not(newWord[0]=='a'||newWord[0]=='e'||newWord[0]=='i'||newWord[0]=='o'||newWord[0]=='u'))
      if (newWord[0]=='q' && newWord[1]=='u')
        newWord = newWord[2..-1] + 'qu'
      else
        newWord = newWord[1..-1] + first
        first = newWord[0]
      end
    end

    newWord = newWord + 'ay'
    outputArr.push(newWord)
  }

  if (wordCount==0)
    return ''
  end

  if (wordCount>=1)
    output = outputArr[0].to_s
  end

  if (wordCount >= 2)
    position = 1
    while (position < wordCount)
      output = output + ' ' + outputArr[position]
      position = position + 1
    end
  end
  return output
end

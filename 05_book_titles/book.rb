def isRare (word)
  if (word=='the'||word=='a'||word=='an'||word=='and'||word=='or'||word=='in'||word=='of')
    return false
  else
    return true
  end
end


class Book
  #initializor
  def initialize
    @title = ''
  end

  #getter method for title
  attr_accessor :title

  #setter method for title, correcting capitalizing of input
  def title=(rawTitle)
    rawArray = rawTitle.split(' ')
    #newArray = [rawArray[0].capitalize]
    newArray = []
    rawArray.each {|word|
      if (newArray.length==0 || isRare(word) || word=='i')
        newWord = word.capitalize
      else
        newWord = word
      end
      newArray.push(newWord)
    }
    newTitle = newArray[0]
    if (rawArray.length > 1)
      pos = 1
      while (pos < rawArray.length)
        newTitle = newTitle + ' ' + newArray[pos]
        pos = pos+1
      end
    end
    #newTitle = rawTitle.capitalize
    @title = newTitle
  end

end

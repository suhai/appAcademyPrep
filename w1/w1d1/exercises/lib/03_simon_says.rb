def echo(str)
  str
end
#

def shout(str)
  str.upcase
end
#

def repeat(str, num = 2)
  str + " #{str}" * (num - 1)
end
#

def start_of_word(str, num)
  str[0...num]
end
#

def first_word(str)
  str.split(' ')[0]
end
#

def titleize(str)
  ignoredWords = ['and', 'over', 'the']
  strArr = str.split(' ').map.with_index do |word, ind| 
    if ind != 0 && ignoredWords.include?(word)
      word.downcase
    else
      word.capitalize
    end
  end
  strArr.join(' ')
end
#

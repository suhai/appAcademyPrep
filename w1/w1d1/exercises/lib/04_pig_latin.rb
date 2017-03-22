
def pig_latin(word)
  vowels = %w(a e i o u)
  slicer = 0
  result = ''
  if vowels.include?(word[slicer])
    result = word + 'ay'
  else
    until vowels.include?(word[slicer])
      slicer += 1
    end
    slicer += 1 if word[slicer] == "u" && word[slicer - 1] == "q"

    result = word[slicer..-1] + word[0...slicer] + 'ay'
  end
  result
end
#----------------------------------------------------------------------
def translate(str)
  str.split(" ").map {|word| pig_latin(word) }.join(" ")
end
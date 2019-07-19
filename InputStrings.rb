#P4) Take an input string parameter and determine if exactly 2 question marks exist between every pair of numbers
# that add up to 15. If so, return true, otherwise return false.
#For example, given “arrb6??9xxbl6??eee9” return true.

#Solution No1
def questionMarks(str)
  result = []
  str = str.gsub(/[a-zA-Z]/, '')
  for i in 0..str.length-1
    if str[i].to_i + str[i+1].to_i == 15
      return false
    elsif str[i].to_i + str[i+2].to_i == 15
      return false
    elsif str[i].to_i + str[i+3].to_i == 15
      result << [str[i], str[i+3]]
      if str[i+1] != '?' and str[i+2] != '?'
        return false
      end
    end
  end
  if result == []
    return false
  else
    return true
  end
end

str = "arrb5??10xxbl6??eee9ff"
puts questionMarks(str)


#The exercise conditions "between every pair of numbers" doesn't correlate with the example,
# given “arrb6??9xxbl6??eee9” return true, since we have a 3 pairs in example (6 - 9, 9 - 6 and 6 - 9 )
# and the second pair is failed the condition "if exactly 2 question marks exist"
#But in case if the example is correct I providing the second solution which is return True

#Solution No2
def questionMarks1(str)
  result = []
  str = str.gsub(/[a-zA-Z]/, '')
  i = 0
  while i < str.length do
    if str[i].to_i + str[i+1].to_i == 15
      return false
    elsif str[i].to_i + str[i+2].to_i == 15
      return false
    elsif str[i].to_i + str[i+3].to_i == 15
      result << [str[i], str[i+3]]
      i+=4
      if str[i+1] != '?' and str[i+2] != '?'
        return false
      end
    end
    i+=1
  end
  if result == []
    return false
  else
    return true
  end
end

str = "arrb6??9xxbl6??eee9ff"
puts questionMarks1(str)
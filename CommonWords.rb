#P2) Write a function that takes in two lists of words and returns a list of the words common to both original lists.
#For example, given ["hello", "adios", "goodbye", "hola", "au revoir", "bonjour"]
# and ["hello", "welcome","thanks", "goodbye", "please"], return ["hello", "goodbye"].
#
def common_words(list1, list2)
  commonres = []
  count = 0
  for i in 0...list1.length
    for j in 0...list2.length
      if list2[j] == list1[i]
        commonres << list1[i]
        count += 1
      end
    end
  end
  if count == 0
    puts("No common words in the lists")
  else
    puts("List of the words common to both original lists #{commonres}")
  end
end
#ls1 = []
ls1 = ["hello", "adios", "goodbye", "hola", "au revoir", "bonjour"]
ls2 = ["hello", "welcome","thanks", "goodbye", "please"]

puts common_words(ls1, ls2)



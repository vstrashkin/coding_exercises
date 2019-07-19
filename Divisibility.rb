#P3) Write a function that takes in 3 integers as arguments and returns a list of numbers from 1 to 100 (inclusive),
# containing only integers that are evenly divisible by at least one of the integers.
#For example, given 50, 30, and 29, return [29, 30, 50, 58, 60, 87, 90, 100].
#
def evenly_devis(int1, int2, int3)
  result = []
  counter = 1
  if int1 < 1 || int2 < 1 || int3 < 1
    puts("Wrong input")
  else
    while counter < 101 do
      if (counter % int1) == 0 || (counter % int2) == 0 || (counter % int3) == 0
        result << counter
      end
      counter += 1
    end
    puts("List of the integers that are evenly divisible by at least one of the integers #{result}")
  end
end

puts evenly_devis(50,30,29)
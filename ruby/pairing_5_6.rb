#Release 0
#Write a method that iterates trhough an array (.each)
#Look to check if the value is the same the given value.
#Return the index of the item if it exists within the array.
#Return nil if it's not in the array.
#for each index, find the value of that index and comapre it to the parameter
array = [1, 2, 3, 4, 5]
int = 7
def int_search(array, int)
    found = nil
	array.each_index do |char|
		if array[char] == int
			p char
			found = true
		end
	end
	if found == nil
		p found
	end
end

int_search(array, int)

#Release 1
#Create a method that will recieve the number of the Fibonacci sequence.
#Starting with numbers 0 and 1, adding the two numbers
#Create an array with a length of two
#Add two values to the array.
#Appened (push) a value at the end of the array, remove the value at the front of the array (.shift)
#Create another array containg all the values.
#Repeat line 10-12 relative to the value recieved at line 8.
#Return the array at line 13
puts "Enter an integer:"
fib_int = gets.to_i

def fibonacci(fib_int)
	array = [0, 1]
	fib_array = [0, 1]
	i = 0
	until i == fib_int - 2
		fib_array.push (array[0] + array[1])
		array.push (array[0] + array[1])
		array.shift
		i += 1
	end
	p fib_array
end

fibonacci(fib_int)



#Release 2
#Receive an array
#Iterate through the array
#Bubble sort: "repeatedly steps through the list to be sorted,
#compares each pair of adjacent items and swaps them if they are in the wrong order.
#The pass through the list is repeated until no swaps are needed,
#which indicates that the list is sorted.
#Think through bubble sort.

#Compare values within an array and swap their index if one value is smaller at the compared index location.
#making the loop for the number of content of the array
#doing it again for one less number again as one number is established

arr = [9, 8 , 7,6,5,4,3,2,1]

def sorting(arr)
  x=0
  y= arr.length
  until y == 0
  x=0
		  while x < (arr.length-1)
  #		  if !(arr[x+1]== nil)

    			if arr[x] > arr[x+1]
    				arr[x+1] , arr [x] = arr[x] , arr [x+1]
    			end

  #			end
  			x+=1
			end
		y-=1
	end
return arr

end

sorting(arr)

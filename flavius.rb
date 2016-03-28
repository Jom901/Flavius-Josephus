#This function determines a the numbers in a sequence that will be deleted
# and returns a string representing the order in which the numbers were deleted
def death(arr,pos,m)
    #define an empty result string
    result = ""
    #If the array size is 1, just return the first index
    if arr.size == 1
        return arr[0].to_s
    end
    #If the position is bigger than the size of the array
    if  pos+m > arr.size
        #Set the pos back into size of the array
        pos = (pos+m)%arr.size
        # append the number in the position to result
        result << arr[pos].to_s
        #delete the number (a.k.a. kill it)
        arr.delete_at(pos)
        #Append to result a recursive call to death
        result += death(arr,pos,m)
        #return the result
        return result
    end
    #If the position is small than the size of the array
    if arr.size > pos+m 
        #The next target is updated according to m
        pos = pos + m
        #Append the number in the position to result
        result << arr[pos].to_s
        #delete the number (a.k.a. kill it)
        arr.delete_at(pos)
        #Append the result of a recursive call to death
        result += death(arr,pos,m)
       
        return result
    end
    #if the target is past the end of the array
    if arr.size == pos+m 
        #set the position to 0
        pos = 0
        #Append that number
        result << arr[pos].to_s
        #delete it
        arr.delete_at(pos)
        #Append the result of a recursive call to death
        result += death(arr,pos,m)
        #return
        return result
    end
end

print "Input: "
line = gets

#Split the input by commas
line = line.split(',')
#create a container array
container = []
#receive n and m
n = line[0].to_i
m = line [1].to_i

#Insert the numbers 0 to n into the container array
(0...n).each do |x|
    container << x
end

#Create a result string
result = ""
#Initiate the death sequence
result = death(container,0,m-1)
#print out results
puts result.split('').join(' ')


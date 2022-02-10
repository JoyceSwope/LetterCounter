class LetterCounter
    def countbobulator letters
      input = letters.downcase #Takes user input and change any upper case letters to lower case letters
      input = input.gsub(" ", "") #Removes any spaces from letters
      array = input.chars #Turns letters into a character array
      array = array.sort #Sorts array alphabetically 
      userhash = array.each_with_object(Hash.new(0)){| key, value | value[key] += 1} 
      # ^ takes array and creates a new hash. (userinput = value and userhash = key.) (+= 1 continues to next location in hash)
      sort = userhash.sort_by{|k,v|[-v,k]} #Sorting userhash by key then by value. Returns from largest value to smallest
      freqsort = sort.to_h #Transforms above data into new hash
      result = freqsort.keys.join #Taking only keys (characters) from hash. (.join function returns into string.)
    end
end
# Count number of letters
# Sort letters from most to least occurance in string



  

        # Thanks, Regina!!
        #Persnickety is a nice word.
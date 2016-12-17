=begin
Prompt the designer/user for all of this information.
Convert any user input to the appropriate data type.
Print the hash back out to the screen when the designer has answered all of the questions.
Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
Print the latest version of the hash, and exit the program.
Be sure to pseudocode, and leave your pseudocode in as. comments.

allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

=end

# Plan to make an array of record
# push hash of customer data record in it
# find the hash in the array and retrieve it.



# limitation, need to address the duplication of id by making an array of id
# and then find the hash of id as key : and other hash containing the data of the customer. (nested hash)



# create the record array
record = []
#create client hash to be put in the record
Hash client = Hash.new


#creating the input method (reused in edit and add method)
def enter_detail
  temp_hash = Hash.new
  repeat = "y"
    # loop until user said won't add another customer
    while repeat == "y"
          # Ask for client id
          p " Please enter client ID"
          temp_hash [:id] = gets.chomp.to_i
          # Ask for client name
          p " Please enter client name"
          temp_hash [:name] = gets.chomp
          # Ask for client age
          p " Please enter age"
          temp_hash [:age] = gets.chomp.to_i
          # Ask for client number of children
          p " Please let us know how many kids you have"
          temp_hash [:kids] = gets.chomp.to_i
          # Ask for client's decor theme
          p " Please let us know you decor theme you have in mind"
          temp_hash [:decor_theme] = gets.chomp.to_i
          # Ask for client do they have pets
          p " Please let us know if you have any pets"
          temp_hash [:pets] = gets.chomp
          # Ask for client do they like outdoor activity
          p " Please let us know if you love to have space for outdoor party (y/n)"
          temp_hash [:outdoor] = gets.chomp.downcase
          # Ask for client do they like indoor activity
          p " Please let us know if you love to have indoor partying (y/n)"
          temp_hash [:indoor] = gets.chomp.downcase

          p temp_hash
          p "please confirm the data entered to save (y/n)"
          temp_confirm = gets.chomp.downcase
          #save only if
          if temp_confirm == "n"
          temp_hash.clear
          end

          p "would you like to add more client data? (y/n)"
          repeat = gets.chomp.downcase

    end


      return temp_hash
end


# method for edits the record ..
def edits

end

def add
confirm = "n"

    until confirm == "y"
    #creating a new hash record using the return hash from enter_detail
    client = enter_detail()
    #save data only if it is not empty (checking cos empty the hash if it is not confirmed)
      if !client.empty?

      return client

      end
    end
end


def delete
  p "  Please enter the customer ID you want to delete :"
  id = gets.chomp.to_i

  # find the id of the customer from the array of hash (selecting hash record that match the value )
  # return the hash record and and look for the index of the hash record in the array.
  temp_record_index = record.index (client.select {|x, y| y == id})
  # using enter detail method and store the return hash record in the array index intended to delete
  record.delete_at(temp_record_index)
end



#p "1:id    2:name     3:age    4:kids     5:pets   6:decor_theme   7:outdoor    8:indoor "

p "Please let us know the action you want to take  Add = a  Edit = e Delete = d"
  action = gets.chomp.downcase


  if action == "a"
    p "action Add"
    client = add()
    record.push(client)
    p record

  elsif action == "e"

    edits() #it does not do anything.. due to some error in method
     p " Please enter the customer ID you want to edit :"
     id = gets.chomp.to_i
      # find the id of the customer from the array of hash (selecting hash record that match the value )
      # return the hash record and and look for the index of the hash record in the array.
     temp_hash = client.select {|x, y| y == id}
     temp_record_index = record.index(temp_hash)
     # using enter detail method and store the return hash record in the array index intended to edit.
     record[temp_record_index] = enter_detail()


  elsif action == "d"
    delete()
  end




#make a method of promping all these questions

#save these data to a hash datatype

#print all these data to the screen

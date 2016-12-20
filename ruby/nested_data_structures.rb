#nested data  for a box
#first level hash (need to access with key)
# second level array (need to access with array index)
#third level hash
#4th level hash
#5th level array

my_box = { box:
#  {diary:}
  [old_photos:{family:{
    parents: ["father","mother"]
      }
    }]


}


#printing the mother photos
p my_box [:box][0][:old_photos][:family][:parents][1]


# add photo in box old_photos family

p my_box [:box][0][:old_photos][:family].merge! ({siblings: ["sister"]})

z = {key: "data"}
y= {answer: "data"}
z.merge! (y)
p z

# add brothers photo in sibling category
p my_box [:box][0][:old_photos][:family][:siblings].push "brother"

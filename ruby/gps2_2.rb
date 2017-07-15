# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
#  - write out method scope
#  - argument
#  - end method
# output: print method

list = {}

def create_list(grocery)
  list = {
  }
  array = grocery.split(' ')
    array.each do |item|
    list[item] = 1
    end
  p list
end

list = create_list("banana pasta avocado toothpaste")

# Method to remove an item from the list
# input: write out empty hash (?)
# steps:
# - call hash
# - argument to remove item from list
# - end method
# output: print new list


def add_list(list, item, quantity)
      #list.add("item", "quanity")
      list[item] = quantity
end

 p list
#item_index = list.key("banana",1)


def delete_item(list,item)
  list.delete(item)
end

p list

# Method to update the quantity of an item
# input: new hash (?)
# steps:
# - argument to count the new hash
# - end method
# output: print hash with quantity of items

def update_item(list,item,quantity)
    list[item] = quantity
    end

p list


# Method to print a list and make it look pretty
# input: hash
# steps:
# - list hash with each item in a different line with quantity
# - end method
# output: print hash

def print_list(list)
list.each do |item,amount|
  if amount >= 1
    puts "We have #{amount} #{item}"
  end
end
end


add_list(list,"beef",1)
delete_item(list,'banana')
update_item(list,"beef",3)

list = create_list("Lemonade Tomatoes Onions IceCream")
update_item(list,'Lemonade',2)
update_item(list,'Tomatoes',3)
update_item(list,'Onions',1)
update_item(list,'IceCream',4)
p list
delete_item(list, "Lemonade")
p list
update_item(list,"IceCream",1)
p list
print_list(list)



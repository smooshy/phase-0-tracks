#5.2
#Will Friebel
#Andrew Peterson

def add_item(array, item)
	array.push(item)
end

def our_method(item1, item2, item3)
	array1 = [item1, item2, item3]
end

our_array = []
our_array.concat(["a", "b", "c", 1, 2])
p our_array

our_array.delete_at(2)
p our_array

our_array.insert(2, "inserted item")
p our_array

our_array.delete("a")
p our_array

puts "Is \"a\" part of this array?\n #{our_array.include?("a")}"

second_array = [5, 6, 7, 8]
third_array = our_array + second_array
p third_array

p our_method(1, 2, 3)

p add_item([1, 2, 3], 4)
p add_item(["Hi", "my", "name", "is"], "Will")
p add_item([nil, 5, false], true)

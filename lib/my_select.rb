def my_select(collection, selected)
  i = 0
  while i < collection.size do
    yield(collection[i]) if block_given?
    i += 1
  end
end

collection = [1,2,3]
selected = 3
my_select(collection) {|element|
  element.even?
}

def my_select(collection)
  i = 0
  while i < collection.size do
    yield(collection[i]) if block_given?
    i += 1
  end
end

collection = []
my_select(collection) {|element|
}

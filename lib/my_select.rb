def my_select(collection)
  if block_given?
    i = 0
    array = []
    while i < collection.size do
      n = yield(collection[i]) 
      puts n
        array << collection[i]
      end
      i += 1
    end
    
    array
  end 
end

collection = [1,2,3,4,5]

my_select(collection) {|element|
  element.even?
}

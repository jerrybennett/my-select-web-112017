def my_select(collection)
  new_collection = []
  i = 0
  if block_given?
    while i < collection.length
      if yield(collection[i]) == true
        new_collection << collection[i]
      end
      i += 1
    end
  end
  return new_collection
end

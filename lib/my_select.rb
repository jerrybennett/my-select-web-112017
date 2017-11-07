def my_select(collection)
  new_collection = []
  i = 0
  if block_given?
    # for e in collection
    #   if e == true
    #     new_collection.push yield e
    #   end
    # end
    while i < collection.length
      if block.call(i) == true
        new_collection << yield(collection[i])
      end
      i += 1
    end
  end
  return new_collection
end

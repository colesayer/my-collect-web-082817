def my_collect(collection)
  i = 0
  new_collection = []
  while i < collection.length
    modified_element = yield collection[i]
    new_collection << modified_element
    i += 1
  end
  new_collection
end

collection = []

my_collect(collection) do |x|
  x.split(" ").first
end

my_collect(collection) do |x|
  x.upcase
end

def join_nested_strings(src)
  result = []
  src.each do |array|
    result = push_strings_from_array(result, array)
  end
  result.join(" ")
end

def push_strings_from_array(result, array)
  array.each do |element|
    result << element if element.is_a? String
  end
  result
end